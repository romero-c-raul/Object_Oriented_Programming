=begin
Create a class called MyCar. 

When you initialize a new instance or 
object of the class, allow the user to define some instance variables that 
tell us the year, color, and model of the car. 

Create an instance variable 
that is set to 0 during instantiation of the object to track the current speed 
of the car as well. 

Create instance methods that allow the car to speed up, 
brake, and shut the car off.
=end

class MyCar
  attr_accessor :color, :current_speed
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
end

my_vehicle = MyCar.new(2017, 'black', 'CRV')

puts my_vehicle.color
my_vehicle.spray_paint('red')
