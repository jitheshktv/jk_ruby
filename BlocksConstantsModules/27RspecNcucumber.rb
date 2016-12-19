# gem install rspec
# rspec tests looks very similar to spec based test.
# rspec.info

describe Spaceship, "#name" do
  it "returns the name" do
    ship = Spaceship.new('JK')
    ship.name.should eq('JK')
end

# Cucumber BDD
# gem install cucumber

# using scenario
# using reg exp
# cukes.info
