# frozen_string_literal: true

require "date"
require "digest"
require "pathname"
require "yaml"

ROOT = Pathname.new(__dir__).join("..").expand_path
SKILL_NAME = "ac-societario"
RUNTIME_KNOWLEDGE = [
  "knowledge/original/00-INDICE-SOCIETARIO.md",
  "knowledge/live-2026-08-22/01-REGRAS-DE-USO-E-LIMITES.md",
  "knowledge/live-2026-08-22/02-ESCOPO-E-ROTEAMENTO.md",
  "knowledge/live-2026-08-22/03-FONTES-CANONICAS.md",
  "knowledge/live-2026-08-22/04-SKILLS-E-CENARIOS-DE-USO.md",
  "knowledge/live-2026-08-22/05-PERGUNTAS-TESTE-E-RESPOSTAS-ESPERADAS.md",
  "knowledge/live-2026-08-22/06-GUARDRAILS-E-CLAIMS-BLOQUEADOS.md",
  "knowledge/live-2026-08-22/07-MODELOS-DE-RESPOSTA-E-CHECKLISTS.md",
  "knowledge/live-2026-08-22/08-LACUNAS-E-ROADMAP.md",
  "knowledge/live-2026-08-22/99-FONTES-LACUNAS-E-CONTROLE-DE-VERSAO.md"
].freeze

def fail_validation(message)
  warn "skill validation error: #{message}"
  exit 1
end

def load_yaml(relative_path)
  path = ROOT.join(relative_path)
  content = path.read(encoding: "UTF-8")
  value = YAML.safe_load(
    content,
    permitted_classes: [Date],
    permitted_symbols: [],
    aliases: false
  )
  fail_validation("#{relative_path} must contain a YAML mapping") unless value.is_a?(Hash)
  value
rescue Errno::ENOENT
  fail_validation("missing #{relative_path}")
rescue Psych::Exception => e
  fail_validation("invalid YAML in #{relative_path}: #{e.message.lines.first.strip}")
end

def dig_required(mapping, relative_path, *keys)
  value = mapping.dig(*keys)
  fail_validation("#{relative_path} is missing #{keys.join('.')}") if value.nil?
  value
end

skill_text = ROOT.join("SKILL.md").read(encoding: "UTF-8")
frontmatter_match = skill_text.match(/\A---\r?\n(.*?)\r?\n---(?:\r?\n|\z)/m)
fail_validation("SKILL.md has invalid or missing YAML frontmatter") unless frontmatter_match

begin
  frontmatter = YAML.safe_load(
    frontmatter_match[1],
    permitted_classes: [],
    permitted_symbols: [],
    aliases: false
  )
rescue Psych::Exception => e
  fail_validation("invalid YAML in SKILL.md frontmatter: #{e.message.lines.first.strip}")
end

fail_validation("SKILL.md frontmatter must be a mapping") unless frontmatter.is_a?(Hash)
unexpected_keys = frontmatter.keys - %w[name description license allowed-tools metadata]
fail_validation("unexpected SKILL.md frontmatter keys: #{unexpected_keys.join(', ')}") unless unexpected_keys.empty?
fail_validation("SKILL.md frontmatter name must be #{SKILL_NAME}") unless frontmatter["name"] == SKILL_NAME
description = frontmatter["description"]
unless description.is_a?(String) && !description.strip.empty? && description.length <= 1024
  fail_validation("SKILL.md frontmatter description must be a nonempty string of at most 1024 characters")
end
if description.include?("<") || description.include?(">") || description.start_with?("[TODO:")
  fail_validation("SKILL.md frontmatter description contains a forbidden placeholder or angle bracket")
end

agent = load_yaml("agent.yaml")
runtime = dig_required(agent, "agent.yaml", "skill_runtime")
fail_validation("agent.yaml skill_runtime must be a mapping") unless runtime.is_a?(Hash)

expected_runtime = {
  "name" => SKILL_NAME,
  "entrypoint" => "SKILL.md",
  "interface" => "agents/openai.yaml",
  "source_policy" => "references/source-policy.md",
  "response_modes" => "references/response-modes.md"
}
expected_runtime.each do |key, expected|
  actual = runtime[key]
  fail_validation("agent.yaml skill_runtime.#{key} must be #{expected}") unless actual == expected
end
unless runtime["knowledge"] == RUNTIME_KNOWLEDGE
  fail_validation("agent.yaml skill_runtime.knowledge must preserve the exact ten-file baseline and order")
end

skills = dig_required(agent, "agent.yaml", "skills")
skill_entry = skills.is_a?(Array) && skills.find { |entry| entry.is_a?(Hash) && entry["id"] == SKILL_NAME }
fail_validation("agent.yaml skills must declare #{SKILL_NAME}") unless skill_entry
unless skill_entry["entrypoint"] == "SKILL.md" && skill_entry["interface"] == "agents/openai.yaml"
  fail_validation("agent.yaml skills entrypoint/interface must point to the distributable package")
end

openai = load_yaml("agents/openai.yaml")
interface = dig_required(openai, "agents/openai.yaml", "interface")
fail_validation("agents/openai.yaml interface must be a mapping") unless interface.is_a?(Hash)
%w[display_name short_description default_prompt].each do |field|
  value = interface[field]
  fail_validation("agents/openai.yaml interface.#{field} must be a nonempty string") unless value.is_a?(String) && !value.strip.empty?
end
short_description = interface["short_description"]
unless short_description.length.between?(25, 64)
  fail_validation("agents/openai.yaml interface.short_description must contain 25 to 64 characters")
end
unless interface["default_prompt"].include?("$#{SKILL_NAME}")
  fail_validation("agents/openai.yaml interface.default_prompt must mention $#{SKILL_NAME}")
end
unless openai.dig("policy", "allow_implicit_invocation") == true
  fail_validation("agents/openai.yaml policy.allow_implicit_invocation must be true")
end

manifest_path = ROOT.join("knowledge/live-2026-08-22/MANIFEST.md")
manifest_entries = {}
manifest_path.each_line(encoding: "UTF-8") do |line|
  match = line.match(/^\|\s*`([^`]+)`\s*\|\s*`([0-9a-f]{64})`\s*\|\s*(\d+)\s*\|\s*$/)
  next unless match

  relative_path = match[1].start_with?("knowledge/") ? match[1] : "knowledge/#{match[1]}"
  manifest_entries[relative_path] = { sha256: match[2], bytes: match[3].to_i }
end

unless manifest_entries.keys.sort == RUNTIME_KNOWLEDGE.sort
  fail_validation("runtime Knowledge manifest must contain exactly the ten declared files")
end

RUNTIME_KNOWLEDGE.each do |relative_path|
  path = ROOT.join(relative_path)
  fail_validation("missing runtime Knowledge file: #{relative_path}") unless path.file?

  expected = manifest_entries.fetch(relative_path)
  actual_bytes = path.size
  actual_sha256 = Digest::SHA256.file(path).hexdigest
  unless actual_bytes == expected[:bytes]
    fail_validation("Knowledge size drift for #{relative_path}: expected #{expected[:bytes]}, got #{actual_bytes}")
  end
  unless actual_sha256 == expected[:sha256]
    fail_validation("Knowledge SHA-256 drift for #{relative_path}: expected #{expected[:sha256]}, got #{actual_sha256}")
  end
end

puts "Societario skill package validation passed"
