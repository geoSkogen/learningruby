def promptAndGet(prompt)
  print prompt
  res = readline.chomp
  throw :quitRequested if res == "!"
  return res
end

catch :quitRequested do
  name = promptAndGet("NAME: ")
  age = promptAndGet("AGE: ")
  gender = promptAndGet("GENDER: ")
end

promptAndGet("NAME: ")
