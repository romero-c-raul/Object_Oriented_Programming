=begin
Create a superclass called Vehicle for your MyCar class to inherit from and 
move the behavior that isn't specific to the MyCar 
class to the superclass. Create a constant in your MyCar class that stores 
information about the vehicle that makes it different from other types of 
Vehicles.

Then create a new class called MyTruck that inherits from your superclass 
that also has a constant defined that separates it from the MyCar class in 
some way.

=end

class Vehicle
  attr_accessor :color, :current_speed, :model
  attr_reader :year
  
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
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

my_car = MyCar.new('2010', 'silver', 'Ford Focus')
my_truck = MyTruck.new('2010', 'white', 'Ford Tundra')
puts my_car
puts my_truck