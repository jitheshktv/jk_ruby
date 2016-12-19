# modules are similar to classes. It cannot be instantiated though.
# modules can contain methods, constants, classes and other modules.

# normal modules are called namespace modules.

module Spacestuff
  def self.hatch_list
    # ...
  end

  class Spaceship
    #..
    def initialize(name)
      @name = name
    end
  end

  module Innermodule
      def self.another_method
        #...
      end
  end
end

hatches = Spacestuff.hatch_list
ship = Spacestuff::Spaceship.new("JK") #:: is the scope resolution operator.
Spacestuff::Innermodule.another_method

##  Mixins : mix in to classes

# A class can include multiple modules and a module can include multiple classes.
# Ruby's alternative for multiple inheritance.
# It will contain instance methods
# we need to "include" module in the class

module AirControl
  def measure_oxygen
    #..
  end
end

module Docking
  # ...
end

class Spaceship
  include AirControl
  include Docking
  # ..
end

ship = Spaceship.new
ship.measure_oxygen

# inheritance will look like this : Spaceship --> Docking --> AirControl --> Object

#Mixins as Class methods; use extend instead of include

module Samplemodule
  def sample_method
    # ..
  end
end

class Sampleclass
  extend Samplemodule # instance methods from module now become available as class methods.
end

Sampleclass.sample_method

##### Mix of instance methods and class methods

module Bigmodule
  module Classmethods
    def method_abcd
      # ..
    end
  end

  def method_xyz
    # ..
  end
end

class Simpleclass
  include Bigmodule
  extend Bigmodule::Classmethods
end

Simpleclass.method_abcd
simple_class = Simpleclass.new
simple_class.method_xyz

########## the above can be done in another way using the "included" method

module Bigmodule1
  module Classmethods
    def method_abcd
      # ..
    end
  end

  def self.included(base)
    base.extend(Classmethods)
  end

  def method_xyz
    # ..
  end
end

class Simpleclass
  include Bigmodule1 # This will now also execute the included methods, which in turn will extend the Class methods.
end

## instance variables in modules
# We can define instance variables in modules. Not variables are created as such, but are created when a method is called which uses a variable
# modules can include attr_accessor definitions.
# When the method is called, instance variable will be created for the object which calls this method. for that reason, it will create issues
# if methods from different modules which the object calls have the same variable defined.

puts $LOAD_PATH








