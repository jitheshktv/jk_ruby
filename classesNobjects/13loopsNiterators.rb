while high_alert?
  sounds.play_siren
end

while high_alert? do sounds.play_siren end

#modified form
sounds.play_siren while high_alert?

#until - counterpart of if

until.ship_at_crusingvelocity?
  ship.accelarate
end

## Condition is evaluated before executing the loop, so it might not get executed at all.

# begin/end loop - similar to while and until modified form, but will be executed at least once. Also we can execute
# multiple statements

begin
  lighting.start_flashing
  sound.play_siren
end while high_aert?

begin
  ship.accelarate
  sound.play_honk
end until cruising_speed?

--------------------------------

for i in [3,2,1]
  puts i
end


for i in (1..10)
  puts i
end

-------------------------------------

## Iterators and blocks
# using each

[3, 2, 1].each do
  puts "hello"
end

#do-end block is used for multilibe block and {} is used for single line block.
# here each is the method invoking the block. It can also pass arguments to the block.

ships = Shapceships.all
ships.each { |ship| puts ship.name }

# infinite loop
loop do
  execute_something_forever
end

# some help with numbers

1.upto(10) { |i| puts i}
20.downto(1) { |i| puts i}
3.times { puts "hllo"}
1.step(10,2) {|i| puts i} # print odd numbers

# control fllow within the loop
# next, break, redo

# next start the next iteration of the loop without finishing the current itration
while message = comms.get_mesage
  next if message.body == "sync"
  message.process
end

# break - exits the loop
while message=comms.get_message
  message.process
  break if message.body == "abcd"
end

text = while message=comms.get_message
         message.process
         break message.text if message.body == "abcd"
       end

# redo - repeat the loop without evaluating the loop condition
i=0
while i 3
  print "Enter a positive number"
  input = gets.to_i
  redo if input <= 0
  i += 1
end


