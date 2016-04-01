class Album
  def initialize(artist, title, year, label)
    @artist = artist
    @title = title
    @year = year
    @label = label
  end
  def artistName
    @artist
  end
  def albumTitle
    @title
  end
  def pubYear
    @year
  end
  def pubLabel
    @label
  end
  def albumString
    puts "#{@title} by #{@artist}, #{@year}--#{@label}"
  end
end

def fixer
  albumsArr = [[""]]
  dataIn = Array["", "", "", ""]
  promts = Array["ARTIST", "ALBUM", "YEAR", "LABEL"]
  fourFields = 0
  indexNum = 0
  while dataIn[fourFields] != "quit"
    if fourFields == 4
      albumsArr[indexNum] = Album.new(dataIn[0],dataIn[1],dataIn[2],dataIn[3])
      albumsArr[indexNum].albumString()
      indexNum += 1
      fixer()
    end
    puts promts[fourFields]
    dataIn[fourFields] = gets.chomp
    fourFields += 1
  end
end

fixer()
