class Spaceship
  attr_reader :name
  attr_reader :speed

  def initialize(name)
    @name = name
    @cargo = []
    @speed = 0
    @vessels = Hash.new{ []}
  end

  def[](type)
    @vessels[type]
  end

  def []=(type, vehicles)
    @vessels[type] = vehicles
  end

  def << (cargo)
    @cargo << cargo
  end

  def <=> (other)
    name <=> other.name
  end

  def +@
    @speed += 10
  end

  def -@
    @speed -= 10
  end
end

ship1 = Spaceship.new("Jithesh")
class Lander
  #...
end

ship1[:landers] = [Lander.new, Lander.new]
p "Landers : #{ship1[:landers]}"

class Cargo
  #..
end

cargo_new = Cargo.new
ship1 << cargo_new
p ship1

ship2 = Spaceship.new("Neethu")
ship3 = Spaceship.new("Ninus")

p [ship1, ship2, ship3].sort.map {|s| s.name}

+ship1
p ship1.speed

-ship1
p ship1.speed

