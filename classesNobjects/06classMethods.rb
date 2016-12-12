class Spaceship
  def self.class_method
    2
  end
end

puts Spaceship.class_method
ship = Spaceship.new
# puts ship.class_method # This will throw undefined method error.