=begin
What is a module? What is its purpose? How do we use them with our classes? 
Create a module for the class you created in exercise 1 and include it properly.

A module is a collection of behaviors that is usable in  other classes via mixins,
basically it allows us to group reusable code into one place
=end

# Example 1
  # module Speak
  #   def speak(sound)
  #     puts sound
  #   end
  # end
  
  # class HumanBeing
  #   include Speak
  # end
  
  # first_human = HumanBeing.new
  # first_human.speak("I am the first human")

# Example 2

module Start
end

class Car
  include Start
end

module Manufacturer
  class Toyota
  end
  
  class Ford
  end
  
  class Nissan
  end
end

new_car = Manufacturer::Car.new

