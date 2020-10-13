=begin
1. Add a class method to your MyCar class that calculates the gas mileage of 
any car.
2. Override method to_s to create a user friendly print out of your object
=end

class MyCar
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
    puts "New paint job! Your car is now #{color}."
  end
  
  def self.calculate_gas_milage(miles, galons)
    mpg = miles / galons
    "Your milage is #{mpg} mpg."
  end
  
  def to_s
    "This is a #{year} #{model} in color #{color}."
  end
end

my_vehicle = MyCar.new(2017, 'black', 'CRV')

puts my_vehicle.color
my_vehicle.spray_paint('red')

puts MyCar.calculate_gas_milage(100, 20)
puts my_vehicle