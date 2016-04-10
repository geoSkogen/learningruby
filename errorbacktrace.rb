begin
  raise "test exception."
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
end
