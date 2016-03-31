addOn = ""
if addOn != "quit"
  puts "enter text"
  addOn = gets.chomp
  aFile = File.new("plaintext.txt", "r+")
    if aFile
      aFile.syswrite(addOn)
    else
      puts "file not found"
    end
end    
