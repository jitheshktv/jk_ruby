class Spaceship
  attr_reader :debug
  attr_reader :debug_attr

  def set_debug(*attr)
    @debug = true
    @debug_attr = attr
  end

  def debug_only
    return nil unless @debug
    return nil unless block_given?
    puts 'Running debug code Spaceship'
    yield @debug_attr
  end

  def produce
    yield :spaceship, :freighter, :yatch, size: :s, seats: :leather
  end
end

ship = Spaceship.new
ship.set_debug({name: :'Jithesh', age: 32})
ship.debug_only do |attr|
  puts "Debugging now #{attr.inspect}"
end

ship.produce do |what = :spaceship, *types, size: :m, engine_count: 2, **custom_components|
  puts "Producing #{what}"
  puts "types: #{types}"
  puts "Size: #{size}"
  puts "Engine_count: #{engine_count}"
  puts "Custom_components: #{custom_components}"
end

#------------------ BLOCK LOCAL VARIABLES

# Block Arguments shadow the same name variables in the outer scope.
# Variables defined in the block body don't shadow the outer scope.
# Block local variables solve this problem.

class Spaceboat
  def initialize
    @debug = true
    @debug_attrs = { containment_status: :ok, core_temp: 350 }
  end

  def debug_only
    return nil unless @debug
    return nil unless block_given?
    puts 'running the debug code in spaceboat'
    yield @debug_attrs
  end

  def locate_cargo
    attrs = {weight: 200, destination: :Earth}
    # debug_only do |attrs|
    #   attrs[:cargo_accessed] = true
    # end

    # debug_only do |attrs|
    #   attrs={}
    #   attrs[:cargo_accessed] = true
    # end

    # debug_only do |d_attrs|
    #   attrs={}
    #   attrs[:cargo_accessed] = true
    # end

    debug_only do |d_attrs; attrs| # here attrs is a block local variable.
      attrs={}
      attrs[:cargo_accessed] = true
    end

    p attrs
    p @debug_attrs
  end
end

boat = Spaceboat.new
boat.locate_cargo

# Blocks are closures(almost). They carry their context with them.

class Spacethoni
  attr_reader :name
  def initialize(name)
    @name = name
    @debug = true
    @debug_attrs = { containment_status: :not_ok, core_temp: 500 }
  end

  def debug_only
    return nil unless @debug
    return nil unless block_given?
    puts 'running the debug code in Spacethoni'
    yield @debug_attrs
  end
end

thoni = Spacethoni.new('Jithesh')
thoni.debug_only do |attrs|
  #return if thoni.name != 'JitheshK' # this will fail since the return is execeuted from within the outermost scope, cuz block is executed in the outermost scope.
  p attrs
end


###################### Other uses of block
# def with_timing
#   start = Time.now
#   if block_given?
#     yield
#     puts "time taken : #{Time.now - start} seconds"
#   end
# end
#
# def run_operation1
#   sleep(1)
# end
#
# def run_operation2
#   #..
# end
#
# with_timing do
#   run_operation1
#   run_operation2
# end

######################### can be used for Db transaction
# class Database
#   def transaction
#     start_txn
#     begin
#       yield
#     rescue DBError => e
#       rollback_txn
#       log_error e.message
#       return
#     end
#     commit_txn
#   end
# end
#
# DB.transaction do
#   # execute the DB statements.
# end

#### Cons of blocks
# can only be passed to one method
# Blocks cannot be passed around between methods (like objects)
# passing the same method to multiple blocks would require to duplicate it and it wont be DRY coding.