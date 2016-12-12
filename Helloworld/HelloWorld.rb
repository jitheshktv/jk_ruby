# free form language
puts 'Hello World!!!'

# variable scope
variable_1 = 10
# global variables are accessible anywhere
$global_variable = 1

# function
def function1
  variable_1 = 5
  puts variable_1
  puts $global_variable
end

function1 # The variable value from function will be printed
puts variable_1 # variable defined outside will be printed

def double(value)
  value * 2
end

# the function will work for any variable data types
puts double(5)
puts double("abc")
puts double([1, 2, 3])

# gets to get a string from console
print "enter your name :"
name = gets
puts "you name is " + name

# Use other methods using backticks, %x and system
res = `time /t`
puts res

res = %x(time /t)
puts res

res = system("time /t") # system command outputs are printed to the console
puts "value of res is " # res is the result of the system command execution.
puts res
