time = Time.new

values = time.to_a
puts Time.utc(*values)

puts time.to_s
puts time.ctime
puts time.localtime
puts time.strftime("%Y-%m-%d %H:%M:%S")
