s_in = ""
n_in = 0

while s_in != "quit"
  puts "enter score:"
  s_in = gets.chomp
  n_in = s_in.to_i
  result = case n_in
    when 0..40 then "fail"
    when 41..65 then "lame"
    when 66..80 then "basic"
    when 81..90 then "better"
    when 91..100  then "best"
    else "enter a valid score:"
  end
  puts result
end
