def debug_only(param=nil, &block)
  puts "Param class is : #{param.class}"
  puts "Block class is: #{block.class}" if block_given?
end

debug_only{} # here a block is passed.
puts "------"
p1=Proc.new{|blah| puts "I am a proc that says #{blah}"}
p2=proc {|blah| puts "I am a proc that says #{blah}"}
puts p

debug_only(p1) # here is no block is passed. A proc is passed, but that's treated as a parameter.
puts"---------"
debug_only(&p1) # here block is passed as a proc.
debug_only(&p2)

# a proc is prefixed with "&"
# a block can be converted to a proc by prefixing it with &

p1.call 'yay'
p2.yield 'wow'
p1.('nothing')
p2['hello']

# So proc can now be converted to an object by converting it to Proc

####### LAMBDA #############
lmb = lambda { |blah| puts"I am also a proc and I say #{blah}" }
also_lmb = -> (blah) { puts "I am also a proc and I say #{blah}"}

####### Difference between proc and lambda

#Procs are like blocks, lambdas are like anonymous methods
#lambda are strict about their arguments.
#return and break behave differently in proc and lambda
#next behave the same


# Missing or too many arguments - lambda will throw exception while proc ignore the extra and treat the missing ones as nil
# Avoid return and breaks on procs and blocks. in block/proc, the return is executed in the scope where the block is defined. In lambda, it's returned to the caller.
#


p proc {|a,b|}.arity # return number of arguments
p proc{|a, *b, c|}.arity # returns no of non-optional args + 1, but with a "-"

weekend = proc {|time| time.saturday? || time.sunday?}
weekday = proc {|time| time.wday < 6 }

case Time.now
  when weekend then puts "This is weekend"
  when weekday then puts "this is weekday"
end