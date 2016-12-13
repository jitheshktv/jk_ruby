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
    puts "Runing debug code"
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