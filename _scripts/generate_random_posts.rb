require 'rubygems'
require 'faker'
require 'date'

authors = ['jstotz', 'mcameron']

now = Date.send(:now)

(now - 365).upto(now) do |date|
  title_words = Faker::Lorem.words(rand(4)+1)
  title = title_words.map(&:capitalize).join(' ')
  slug = title_words.join('-')
  
  author = authors[rand(authors.size)]
  text = Faker::Lorem.paragraphs(rand(6)+1).join("\n\n")
  
  file = "_posts/#{date.strftime '%Y-%m-%d'}-#{slug}.markdown"
  
  content = <<-DOC
---
layout: default
title: #{title}
author: #{author}
---

#{text}
DOC
  
  File.open(file, 'w') {|f| f.write(content)}
  
end