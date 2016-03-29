trigrams = Array[ "earth", "thunder", "water", "lake",
             "mountain", "fire", "wind", "sky" ]
hash = Hash[ "artist" => "Sleonard Thoomjaquet",
         "title" => "Certain Dearths of Birthparts",
         "length" => "45:45",
         "label" => "Asstoot" ]

trigrams.each do |i|
  puts i
end

hash.each do |key,val|
  puts key + ":" + val
end
