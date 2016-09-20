#!/usr/bin/ruby

regexp = Regexp.new ARGV[0]
File.open(ARGV[1]).each_with_index do |line, index|
  puts "#{index} " << line unless ((regexp =~ line) == nil)
end
