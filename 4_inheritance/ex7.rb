=begin

Create a class 'Student' with attributes name and grade. Do NOT make the grade 
getter public, so joe.grade will raise an error. Create a better_grade_than? 
method, that you can call like so...

=end

class Student
  attr_accessor :name
  
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  
  def better_grade_than?(student)
    self.grade > student.grade
  end
  
  protected
  attr_accessor :grade
end

raul = Student.new('Raul', 85)
colleen = Student.new('Colleen', 100)

puts "Well done" if colleen.better_grade_than?(raul)
puts raul.grade