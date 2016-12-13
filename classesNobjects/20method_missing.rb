class Cargo
  def method_missing(name, *args)
    case name
      when /^find_by_([a-z]+)_and_([a-z]+)$/
        find($1.to_sym => args[0], $2.to_sym => args[1])
      when /^find_by_([a-z]+)$/
        find($1.to_sym => args[0])
      # if the else condition is not present, the methods will doesnt exist will not throw the exception.
      else
        super
    end
  end

  def find(*attr)
    puts("finding by #{attr.inspect}")
  end

  def respond_to?(name, *args)
    case name
      when /^find_by_([a-z]+|[a-z]+_and_by_[a-z]+)$/
        return true
      else
        super
    end
  end

  private :find
end

class Spaceship
attr_reader :cargo
  def initialize
    @cargo = Cargo.new
  end
end

ship = Spaceship.new

ship.cargo.find_by_destination("Earth")
ship.cargo.find_by_weight_and_volume(100,10)
#ship.cargo.find_by_weight_or_volume(100,10)

puts ship.cargo.respond_to? :find_by_destination # It will return false if the respond_to? method is not overridden.