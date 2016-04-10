class Info
    @newNames = Array[[0]]
  def name_array(index, name1, name2)
    @newNames[index][0] = name1
    @newNames[index][1] = name2
  end
end

dbOne = Info.new

class Name < Info
  attr_reader :first, :last
  @@objCount = 0
  def object_count
    @@objCount
  end
  def first(first)
    begin
      if first == nil or first.size == 0
        raise ArgumentError.new('everyone has a first name')
      else
        first = first.dup
        first[0] = first[0].chr.capitalize
        @first = first
      end
    rescue
      puts 'everyone has a first name'
    end
  end
  def last(last)
    begin
      if last == nil or last.size == 0
        raise ArgumentError.new('everone has a last name')
      else
        last = last.dup
        last[0] = last[0].chr.capitalize
        @last = last
      end
    rescue
      puts 'everone has a last name'
    ensure
    end
  end
  def full_name
    puts "#{@first} #{@last}"
  end
  def initialize(first, last)
    first(first)
    last(last)
    @@objCount += 1
  end
end
def form_fields
  formFields = Array[ "FIRST", "LAST" ]
  dataIn = [ "", "" ]
  elmCount = 0
  while dataIn[elmCount] != "quit"
    if elmCount == dataIn.length
      n = Name.new(dataIn[0],dataIn[1])
      puts n.full_name()
      puts n.object_count()
      t = n.object_count()
      #n.name_array(t,dataIn[0],dataIn[1])
      elmCount = 0
    else
      puts formFields[elmCount]
      dataIn[elmCount] = gets.chomp
        if dataIn[elmCount] == "quit"
          exit
        end
      elmCount += 1
    end
  end
end

form_fields()
