class Spaceship
  # attr_accessor let you access the instance variable other than through methods
  attr_accessor :destination
end

ship = Spaceship.new
ship.destination = "earth with ship"
puts ship.destination

class Spaceboat
  # attr_accessor is same as giving both writer and reader
  attr_writer :destination
  attr_reader :destination
end

boat = Spaceboat.new
boat.destination = "earth with boat"
puts boat.destination

class Spacecar
  attr_accessor :destination

  def cancel_launch
    destination = "local" # local variable
    puts destination
    self.destination = "attr" # instance variable
  end
end

car = Spacecar.new
car.cancel_launch
puts car.destination

# Accessor just a combination of two methods
class Spacebus
  def destination
    @destination
  end

  def destination=(new_destination)
    @destination = new_destination
  end
end

bus = Spacebus.new
bus.destination = ("Earth with bus")
puts bus.destination