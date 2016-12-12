class Spaceship
  @class_instance_variable=1
  def self.class_method
    @class_instance_variable
  end
end
class Spaceship2 < Spaceship
   @class_instance_variable=2
   def self.class_method
     @class_instance_variable
   end
end

# Each class gets its own copy of class instance variable.
puts Spaceship.class_method # puts 1
puts Spaceship2.class_method # puts 2