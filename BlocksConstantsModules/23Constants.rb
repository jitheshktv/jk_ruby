MIN_SPEED=100
p MIN_SPEED
MIN_SPEED=200
p MIN_SPEED

TYPES=[]
p TYPES
TYPES << 'car'
p TYPES

TYPES.freeze
p TYPES.frozen?
#TYPES << 'truck' # this will fail

TYPES[0].upcase!
p TYPES

class A
  XYZ = 5
end

p A::XYZ
A::XYZ = 10
p A::XYZ
