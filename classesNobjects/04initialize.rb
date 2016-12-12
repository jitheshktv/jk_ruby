class Spaceship
  def initialize(name,cargo_module_count)
    @name = name
    @cargo_hold = cargo_module_count * 4
    @power = 100
  end
end

ship = Spaceship.new("JK",4)
p ship