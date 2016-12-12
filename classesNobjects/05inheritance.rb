class Probe
  def deploy(deploy_time, return_time)
    puts "Deploying"
  end
end

class MineralProbe < Probe
  def deploy(deploy_time)
    puts "Preparing Mineral Chamber"
    # super --> this will pass the argument from the child, and gets error that only 1 of 2 arguments are passed
    # super()--> This will pass empty arguments, and hence throws error that 0 of 2 passed.
    super(deploy_time, deploy_time+2)
  end
end

MineralProbe.new.deploy(5)