# Virtual variables
class Spaceship
  def destination
    @autopilot.destination
  end

  def destination=(new_destination)
    @autopilot.destination = new_destination
  end
end

ship = Spaceship.new
ship.destination = "Earth with van"
puts ship.destination