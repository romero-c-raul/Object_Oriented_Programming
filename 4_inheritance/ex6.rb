=begin

Write a method called age that calls a private method to calculate the age 
of the vehicle. Make sure the private method is not available from outside 
of the class. You'll need to use Ruby's built-in Time class to help.

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
  
  def display_vehicle_age
    "This #{self.model} is #{vehicle_age} year(s) old"
  end
  
  private
  
  def vehicle_age
    Time.now.year - self.year.to_i
  end
end

module Diesel_Engine
  def runs_on_diesel
    "Yes! This is a diesel engine"
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
  include Diesel_Engine
  
  def to_s
    "This truck a #{year} #{model} in color #{color}."
  end
end

my_car = MyCar.new('2010', 'silver', 'Ford Focus')
my_truck = MyTruck.new('2010', 'white', 'Ford Tundra')

my_truck.speed_up(30)
my_truck.display_current_speed
my_truck.spray_paint('pink')
puts my_truck.display_vehicle_age