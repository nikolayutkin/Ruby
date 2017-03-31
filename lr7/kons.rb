#coding: utf-8
require_relative "lr7.rb"

puts "Enter string :"
s = gets
f = File.new("F.txt", "w")
f.write(s)
f.close
puts "Count words>5 :"
puts countWords
