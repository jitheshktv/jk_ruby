# need to install minitest autorun.
# gem install  "minitest-reporters"
# this file will need to be included under the test directory.

require 'minitest/autorun'
# include the code going to run
require_relative '../BlocksConstantsModules/24Modules'
include Spacestuff

class TestSpaceship < MiniTest::Unit::TestCase
  def setup
    @ship = Spaceship.new('JK')
    @ship.probe =+ [Probe.new, Probe.new]
  end

  def test_name1
    assert(@ship.name == 'JK')
  end

  def test_name2
    asser_equal('JK', @ship.name)
  end
end

### minitest spec style test
# more readable test

require 'minitest/autorun'
require_relative '../BlocksConstantsModules/24Modules'
include Spacestuff

describe Spaceship do
  before do
    @ship = Spaceship.new('JK')
  end

  describe "When asked for a name" do
    it "must provide one" do
      @ship.name.must_equal 'JK'
      # use matchers instead of assertions. eg: must_equal
    end
  end
end