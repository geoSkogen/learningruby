File.open('xpath_test_library.xml', 'r') do |f1|
  while line = f1.gets
    puts line
  end
end

File.open('testwrite.txt', 'w') do |f2|
  f2.puts "crushed red party cups"
end
