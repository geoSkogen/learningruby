require 'rexml/document'
include REXML


def iterate
  xmlfile = File.new("xpath_test_library.xml")
  xmldoc = Document.new(xmlfile)

  infoArr = Array[ [""], [""], [""] ]
  tagArr = Array[ "//TITLE", "//AUTHOR", "//PUBLISHER" ]
  tagCount = 0
  memberCount = 0
  numbers = 0
  bookNum = 1

 while numbers < tagArr.length + 1
  infoArr[numbers] = XPath.match(xmldoc, tagArr[numbers]).map {|x| x.text}
  numbers += 1
end

  while memberCount < infoArr[tagCount].length
    puts "BOOK #{bookNum}"
    while tagCount < infoArr.length
      puts infoArr[tagCount][memberCount]
      tagCount += 1
    end
    memberCount += 1
    tagCount = 0
    bookNum += 1
  end
end

iterate()
