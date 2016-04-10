f = File.new("testwrite.txt")
f.seek(8, IO::SEEK_SET)
print f.readline
f. close
