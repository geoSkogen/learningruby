require 'rexml/document'
include REXML


def iterate
  xmlfile = File.new("xpath_test_library.xml")
  xmldoc = Document.new(xmlfile)

  infoArr = Array[ [], [], [] ]
  tagArr = Array[ "//TITLE", "//AUTHOR", "//PUBLISHER" ]
  tagCount = 1
  memberCount = 1
  numbers = 1

 while numbers < tagArr.length + 1
  infoArr[numbers] = XPath.match(xmldoc, tagArr[numbers]).map {|x| x.text}
  numbers += 1
end

  while memberCount < infoArr[tagCount].length + 1
    while tagCount < infoArr.length + 1
      puts infoArr[tagCount][memberCount]
      tagCount += 1
    end
    memberCount += 1
    tagCount = 1
  end
end

iterate()
