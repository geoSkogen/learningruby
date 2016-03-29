class Customer
  @@total = 0
  def initialize(name, id, addr)
    @name = name
    @id = id
    @addr = addr
    @@total += 1
  end
  def display()
    puts "NAME: #@name"
    puts "ID: #@id"
    puts "ADDRESS: #@addr"
  end
  def getTotal()
    puts "TOTAL: #@@total"
  end
end

cust1 = Customer.new("Lolo", "16", "Cowboy Town")

cust1.display()
cust1.getTotal()

cust2 = Customer.new("Lele", "32551521", "Gazorpazorpfield")

cust2.display()
cust2.getTotal()
