#passing a proc to a method

def take_proc a_proc
  puts 'methods starts'
  a_proc.call
  puts 'method finishes'
end

say = lambda do
  puts 'this is the proc'
end

take_proc say

#passing an arg to a proc
codeblock = lambda { |x| "Hello #{x}!" }
puts codeblock.call 'procsnblocs'
