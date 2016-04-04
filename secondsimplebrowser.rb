require 'net/http'
host = 'www.tutorialspoint.com'
path = '/index.html'

http = Net::HTTP.new(host)
headers, body = http.get(path)
if headers.code == "200"
  print headers
  print body
else
  puts "#{headers.code} : #{headers.message}"
end
