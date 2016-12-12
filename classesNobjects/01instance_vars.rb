class Spaceship
  # define the function
  def launch(destination)
    # define an instance variable
    @destination = destination
  end

  def destination
    @destination
  end
end

ship = Spaceship.new
p ship
ship.launch("Earth")
# puts inspect or p method will print the object
puts ship.inspect
p ship

# Below command will not work since instance variable are not visible outside the object.
# It's private and can be accessed only by methods
# puts ship.variable

puts ship.destination # The methods are public be fault





