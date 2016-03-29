$LOAD_PATH << '.'
require 'test_module'

class Wheels
  include Garage
  def inventory
    puts "this is the bicycle data"
    puts Garage::GARTYPE
  end
end

w1 = Wheels.new
w1.inventory
Garage.golf
Garage.camry
