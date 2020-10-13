=begin
3. Solve error

We obtained an error because the setter method was not defined within the code
#attr_reader only creates a getter method and an instance variable, but no
setter method. 
We can solve this issue using the attr_accessor method to create an instance
variable, a getter method, and a setter method.
=end

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
p bob
bob.name = "Bob"
p bob