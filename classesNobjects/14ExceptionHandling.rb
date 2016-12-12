# raise and handle exceptions
# All exceptions are encapsulated in the class Exception.

# CATCHING EXCEPTION : rescue

# using the begin end block. This will apply the rescue to only the batten hatches. if the light_seat fails, it will terminate
def launch
  begin
    battben_hatches
  rescue
    puts "couldnt batten the hatches"
    return false
  end
  light_seat_belt_sign
end

# without using the begine end block

def launch
  batten_hatches
  light_seat_belt_sign
  true
rescue
  puts "Exception occured" # gives a generic exception statement
  false
end

# Exception --> StandardError --> RunimeError

def launch
  batten_hatches
  light_seat_belt_sign
  true
rescue StandardError => e
  puts e.message
  puts e.backtrace
  false
end

def launch
  batten_hatches
  light_seat_belt_sign
  true
rescue LightError
  puts "seat belt light not working, still launching"
  true
rescue StandardError => e
  puts e.message
  puts e.backtrace
  false
end

# use most specific exception type first

# RAISING EXCEPTION : raise

def batten_hatches
  #..
  #..
  raise "Doors Jammed" # This will be raised as a RuntimeException
  #..
end

def batten_hatches
  #..
  #..
  raise HatchException, "Doors Jammed"
  #..
end

# We can write our own exception class. Good idea to derive it from StandardError.

rescue HatchError => err
  puts $!.message #$! refers to the most recent exception, whch is err here/
  raise # use raise within in the rescue to raise the exception to be handled by a more generic handler
end

#ensure --> the ensure clause is executed in al the cases, if the function is completed successfully, or fails and
# handled by an exceptin handler, and also in case if it terminates because of an unhandled exception.
# write it after rescue
# else --. will run if fucntion completed without any exceptions
# write after rescue, but before ensure/.

def batten_hatches
  hatch_file = file.open("hatches.txt")
  # ...
  raise HatchError, "Door is jammed" if door.jammed?
  # ...
  true
rescue HatchError => err
  #..
    false
else
  puts "Well Done, No exceptions"
ensure
  hatch_file.close if hatch_file
end


#Retrying and rescue modifier

def batten_hatches
  1.upto(3) do |attempt|
    begin
      hatch_list = API.request("/hathes")
      break
      rescue HatchError => e
      if attempt == 3
        puts "request failed"
        raise
      end
    end
  end
end


# using retry

def batten_hatches
  hatch_list = API.request("/hatches")
  # ..
rescue HatchError => e
  attempts || =0
  attempts += 1
  if attempts < 3
    puts "retring"
    retry # control bacl to the beginning of the method or the begin/end block
  else
    puts "request timed out"
    raise
  end
end

#throw and catch
# throw and catch should have same arguments, could be a symbol, or an object.

result = catch :abort do
  probes.each do |probe|
    while sample = probe.get_sample
      result = sample.process
      throw :abort, result.message if result.code != 'OK'
      put result.message
      sample.store
    end
  end
  "All samples processed"
end

#the value os result will be "All samples processed" if throw was never executed and it will be result.message if throw/catch was executed.

# Below code will work fine too, even thought catch and throw are nin different methods/fucntions
def handle(sample)
  result = sample.process
  throw (:abort, result.message) if result.code != 'OK'
  put result.message
  sample.store
end

result = catch :abort do
  probes.each do |probe|
    while sample = probe.get_sample
      handle(sample)
    end
  end
  "All samples processed"
end



