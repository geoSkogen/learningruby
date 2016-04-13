require 'open-uri'
require 'pp'
open('http://www.rubylearning.com') do |f|
  puts "URI: #{f.base_uri}"
  puts "Content-type: #{f.content_type}, charset: #{f.charset} "
  puts "Encoding: #{f.content_encoding}"
  puts "Last modified: #{f.last_modified}"
  puts "Status: #{f.status.inspect}"
  pp f.meta
  puts ""
  3.times { |i| puts "#{i}: #{f.gets}" }
end
