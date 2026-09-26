# frozen_string_literal: true

require "pathname"
require "uri"

ROOT = Pathname.new(__dir__).join("..").expand_path
MARKDOWN_FILES = [
  ROOT.join("README.md"),
  ROOT.join("CONTRIBUTING.md"),
  *ROOT.glob(".github/**/*.md"),
  *ROOT.glob("docs/**/*.md")
].select(&:file?).uniq.sort

def github_anchors(path)
  counts = Hash.new(0)
  anchors = []
  in_fence = false

  path.each_line do |line|
    if line.match?(/^\s*(```|~~~)/)
      in_fence = !in_fence
      next
    end

    next if in_fence

    match = line.match(/^\s{0,3}\#{1,6}\s+(.+?)\s*#*\s*$/)
    next unless match

    slug = match[1]
      .gsub(/`([^`]*)`/, '\\1')
      .downcase
      .gsub(/[^\p{L}\p{N}\s-]/u, "")
      .strip
      .gsub(/\s+/, "-")

    duplicate = counts[slug]
    counts[slug] += 1
    anchors << (duplicate.zero? ? slug : "#{slug}-#{duplicate}")
  end

  anchors
end

anchor_cache = {}
errors = []

MARKDOWN_FILES.each do |source|
  in_fence = false

  source.each_line.with_index(1) do |line, line_number|
    if line.match?(/^\s*(```|~~~)/)
      in_fence = !in_fence
      next
    end

    next if in_fence

    line.scan(/!?\[[^\]]*\]\(([^)]+)\)/).flatten.each do |raw_target|
      target = raw_target.strip
      next if target.empty? || target.match?(%r{\A(?:https?://|mailto:|tel:)}i)

      target = target[1..-2] if target.start_with?("<") && target.end_with?(">")
      relative_path, fragment = target.split("#", 2)
      decoded_path = URI::DEFAULT_PARSER.unescape(relative_path.to_s)
      destination = decoded_path.empty? ? source : source.dirname.join(decoded_path).cleanpath
      display_source = source.relative_path_from(ROOT)

      unless destination.file?
        errors << "#{display_source}:#{line_number}: missing local target: #{target}"
        next
      end

      next if fragment.nil? || fragment.empty? || destination.extname.downcase != ".md"

      decoded_fragment = URI::DEFAULT_PARSER.unescape(fragment).downcase
      anchors = anchor_cache[destination] ||= github_anchors(destination)
      next if anchors.include?(decoded_fragment)

      errors << "#{display_source}:#{line_number}: missing heading ##{fragment} in #{destination.relative_path_from(ROOT)}"
    end
  end
end

if errors.empty?
  puts "Checked #{MARKDOWN_FILES.length} Markdown files: all local links are valid."
  exit 0
end

warn errors.join("\n")
warn "Found #{errors.length} invalid local link#{errors.length == 1 ? '' : 's'}."
exit 1
