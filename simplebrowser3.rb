require "net/http"
Net::HTTP.start('www.rubylearing.com') do |http|
  response = http.get('/index.php')
  puts "Code =#{response.code}"
  puts "Message =#{response.message}"
  response.each { |key, val| printf "%14s = %40.40s\n", key, val }
  p response.body
end
