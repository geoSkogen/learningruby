class Info
    @@newNames = Array[[""]]
  def initialize(index, name1)
    @@newNames.push([""])
    @@newNames[index][1] = name1
  end
  def add_last(index, name2)
    @@newNames[index][0] = name2
  end
  def read_array(x)
    puts @@newNames[x].inspect
  end
  def record_count
    @@newNames.length
  end
end

def formFields(elmCount,recCount)
  fieldsArr = Array["FIRST","LAST"]
  dataInArr = Array["",""]
  while elmCount < fieldsArr.length
    puts fieldsArr[elmCount]
    dataInArr[elmCount] = gets.chomp
    if dataInArr[elmCount] == "quit"
      exit
    end
    if elmCount == 0
      n = Info.new(recCount,dataInArr[elmCount])
      elmCount +=1
    else
     n.add_last(recCount,dataInArr[elmCount])
     n.read_array(recCount)
     elmCount = 0
     recCount += 1
    end
  end
end

formFields(0,0)
