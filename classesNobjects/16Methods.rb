# default parameter value
#--------------------------

def produce_spaceship1(type = :freighter, size = :x1)
  #..
end

def produce_spaceship2(type = :freighter, size = calc_default_size(type))
  #..
end

def produce_spaceship3(type = :freighter, size = (type == :freighter ? :x1 : :m))
  #..
end

def produce_spaceship4(type = :freighter, size = :x1, enginecount)
  #..
end

factory.produce_spaceship4(4) # sets engine_count to 4.

# variable number of arguments
#-------------------------------

def produce_fleet(days, *types)
  #..
end

produce_fleet(10, :freighter, :vehicle, :explorer) # days will be assigned as 10,
# and types will be an array with the values, frieghter, vehicle and explorer

def produce_fleet(days=10, *types)
  #..
end
produce_fleet()
produce_fleet(10, :freighter, :vehicle, :explorer)
produce_fleet(:freighter, :vehicle, :explorer) # In this case days will get the value as :freighter.
# If we are passing the argument for a method with variable parameter length, the optional/default parameters should
# also be passed.

#splat operator can be also used to call a method
ship_types = [:freighter, :explorer]
produce_fleet(15, *ship_types) #equivalent to "produce_fleet(10, :freighter, :explorer)"

#keyword argument
#--------------------------------
# the method definition and invocation will have the keyword against each argument. The definition should also
# have default values

def produce_spaceship5(type: :freighter, size: :m, fuel_tank_vol: 100, engine_count: 4)
  #..
end

produce_spaceship5(type: :explorer, size: :l, fuel_tank_vol: 400, engine_count: 8)
# If any of the arguments are not passed, default are used.
# Arguments can be in any order
# can be used with regular parameters, but it has to be defined first before keyword arguments.

#additional parameters can be passed using **
def produce_spaceship6(type = :freighter, size: 10, **custom_components)
  components = {
      engine: :standard,
      seats: :standard,
      subwoofer: :none
  }
  components.merge!(custom_components)
end

produce_spaceship6(:yatch, size: 20, engine: :rolls_royce, seats: :leather)
# "engine: :rolls_royce, seats: :leather" will get assigned to custom_components.

# we can construct a hash and then pass it
build_params = { size: 20, engine: :rolls_royce, seats: :leather }
produce_spaceship6(:yatch, build_params)

# Named arguments
# Aliasing
# Operators and operator overloading
# Method calls as messages
# method_missing and metaprogramming


