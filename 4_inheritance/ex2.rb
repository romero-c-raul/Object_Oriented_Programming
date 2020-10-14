=begin

Add a class variable to your superclass that can keep track of the number of 
objects created that inherit from the superclass. 
Create a method to print out the value of this class variable as well.

=end

class Vehicle
  attr_accessor :color, :current_speed, :model
  attr_reader :year
  
  @@number_of_vehicles = 0
  
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@number_of_vehicles += 1
  end
  
  def self.count 
    "Number of vehicle objects created: #{@@number_of_vehicles}."
  end
  
  def speed_up(integer)
    self.current_speed += integer
    puts "You push the gas and accelerate #{integer} mph."
  end
  
  def brake(integer)
    self.current_speed -= integer
    puts "You push the breaks and decelarate #{integer} mph."
  end
  
  def shut_off
    self.current_speed = 0
    puts "Let's park this bad body!"
  end
  
  def display_current_speed
    puts "You are now going #{current_speed} mph."
  end
  
  def spray_paint(new_color)
    self.color = new_color
    puts "New paint job! Your vehicle is now #{color}."
  end
  
  def self.calculate_gas_milage(miles, galons)
    mpg = miles / galons
    "Your milage is #{mpg} mpg."
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  
  def to_s
    "This car a #{year} #{model} in color #{color}."
  end
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
  def to_s
    "This truck a #{year} #{model} in color #{color}."
  end
end

puts Vehicle.count
my_car = MyCar.new('2010', 'silver', 'Ford Focus')
my_truck = MyTruck.new('2010', 'white', 'Ford Tundra')
puts my_car
puts my_truck
puts Vehicle.count