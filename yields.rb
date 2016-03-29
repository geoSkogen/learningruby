def test_this
  puts "method text"
  yield 1
  puts "more method text"
  yield 2
end

test_this { |i| puts "block #{i} text" }
