tens = Array[0,10,20,30,40,50,60,70,80,90,100]

grades = tens.collect{|x|(x*9)/5+32}

puts grades
