# Organizing Source code
# not enforced; a single file can contain multiple classes;  but not a good practise.
# organize by classes, methods & module; oragnize by file and dirs.

# class/module/method structure
module DeepSpace
  class Spaceship
    #..
  end

  class Probe
    #..
  end
end

# dirs/files structure
project_deep_space
- bin # executable binaries
- doc # any documentation inclused within the code
- lib # libraries; which are the classe and methods
  - deep_space # each module will have it's own directories; snake case.
    - spaceship.rb # a file for each class. snake case
    - proble.rb # a file for each class. snake case.
  - deep_space.rb # for convenience, with application code; so that only this file needs to be called from main.
- test # all tests
- init.rb # the main, kickoff the application.

#### reassembling the code, since the code is spread across multiple files.
# require <absolute_path>
# require "{__dir__}/deep_space_spaceship" #__dir__ is the pwd; ".rb" is not needed.
# require 'json' # ruby will look for this in the load path; $LOAD_PATH global variable will show this path;
# require_relative <relative_path>
# require 'deep_space_spaceship'


##### installing third party libraries.
# libraries are called Gems.
# include using gem command.
# all these libraries are available at 'rubygems.org'
# ruby-toolbox.com lists the categories of gems available.
#


##### managing dependencies
# Bundler - install the gem and its dependencies using a single command. bundler itself is a gem.
# gem install bundler
# it requires the dependencies in a "Gemfile"; lists the depend fgem names, source and the versions.
      #   source "https://rubygems.org"
      #   gem 'pg', '0.13.2'
      #   gem 'haml', '3.1.6'
# bundle install
#


############# Testing
# TDD(test Driven Dev)
# BDD (behaviour driver dev)

# Tests included in the ruby standard library - 1. Mini test 2. wrapper around mini test

# spec
# Rspec - rspec.info
# Cucumber : cukes.info



