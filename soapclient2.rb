require 'soap/rpc/driver'
driver = SOAP::RPC::Driver.new('http://127.0.0.1:8080', 'urn:mySoapServer')
driver.add_method('sayhelloto', 'username')
puts driver.sayhelloto('RubyLearning')
