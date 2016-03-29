year = rand(21) + 1930

quest = ''

while quest != "BYE"
puts 'Ask your Granny anything, Child.'
quest = gets.chomp
  if quest == quest.upcase
    puts 'Not since ' + year.to_s + '.'
  else
    puts 'Speak up, Child; I can\'t quite hear you.'
  end
end

puts 'Happy trails, youngster.'
