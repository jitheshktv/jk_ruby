class Jithesh
  def eat
    collectingredients
    preparefood
    puts "Jithesh is now eating"
  end

  def preparefood
    puts "preparing food"
  end

  private # all class defined from now to another visibility definition will be private

  def collectingredients
    puts "collecting ingredients"
  end

  private :preparefood # This will make the function private. eg --> private :method1, :method2

end

jk=Jithesh.new
#jk.preparefood # this wont work since method is private
# jk.send :preparefood # This will work, using the send method we can invoke private methods from outside the class.
#jk.eat # this will work as expected.

# -----------------------------------------------------

class Neethu < Jithesh
  def initialize
    preparefood
  end
end

neethu = Neethu.new # The private method is visible for the child class.
#----------------------------------------------------------
class Ninus
  def self.printage
    4
  end
  # private :print5 # No errors, but this wont make the class method private
  # private_class_method :print5
end

puts Ninus.printage
#-----------------------------------------------------------------
# protected
class Jithesh
  attr_reader :country
  protected :country # This can be accessed by a method in the same object or an object of a subclass.

  def initialize
    @country = 'usa'
  end

  def is_country_same?(other)
    country == other.country
  end
end

class Neethu < Jithesh
  def initialize
    @country = 'india'
  end
end

jk=Jithesh.new
neethu=Neethu.new
puts jk.is_country_same?(neethu)
#puts jk.country # this will fail since the variable country is protected.