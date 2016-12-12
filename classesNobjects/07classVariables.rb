class Spaceship
  @@class_variable=2
  def self.class_method
    @@class_variable
  end
end

class Spaceship2 < Spaceship
  @@class_variable=3
  def self.class_method
    @@class_variable
  end
end

puts Spaceship.class_method # This returns 3 (and not 2) since the class variables are shared between all the subclasses.
                            # There is only once copy of the variable.
puts Spaceship2.class_method
