def generic(greeting)
  Proc.new { |name| "#{greeting}, #{name}"}
end

hello = generic("HELLO")
goodbye = generic("GOODBYE")

puts hello.call("Elmo Oxygen")
puts goodbye.call("T. Azimuth Schwitters")
