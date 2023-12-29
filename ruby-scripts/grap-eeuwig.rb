require "open-uri"
require "nokogiri"

url = ARGV.first

eeuwig_doc = Nokogiri.HTML(URI.open(url))

matchy = url.match(/les-(\d+)/)
lesson_number = matchy[1]
lesson_name = eeuwig_doc.css("title").text.split("—").first.strip
title = "#{lesson_number}. #{lesson_name}"

eeuwig_content = eeuwig_doc.css("h3, li > p, a.jsBibleLink").map do |content|
  case content.name
  when "h3"
    "## #{content.text.strip}"
  when "p"
    "_#{content.text.strip}_"
  when "a"
    "**#{content.text.strip}**"
  end
end

File.open("../content/eeuwig_gelukkig/les#{lesson_number}.md", "a") do |document|
  document.puts <<HEREDOC
---
title: "#{title}"
date: #{Time.now.strftime('%FT%TZ')}
draft: false
---
HEREDOC

eeuwig_content.each {|content| document.puts(content); document.puts}
end

