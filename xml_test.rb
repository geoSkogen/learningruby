require 'rexml/document'
include REXML

xmlfile = File.new("xml_test_library.xml")
xmldoc = Document.new(xmlfile)

root = xmldoc.root
puts "Root element : " + root.attributes["shelf"]

xmldoc.elements.each("LIBRARY/BOOK") {
  |e| puts "Book Title : " + e.attributes["title"]
}

xmldoc.elements.each("LIBRARY/BOOK/AUTHOR") {
  |e| puts "Author : " + e.text
}

xmldoc.elements.each("LIBRARY/BOOK/PUBLISHER") {
  |e| puts "Publisher : " + e.text
}
