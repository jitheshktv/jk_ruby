# making your code available for others to run

#1. download from source control, and then bundler to install dependencies and run.
#2. package the code as gem.
#    create a new test gem application. It will create the project fodler structure for you.
#    dependencies are in Gemfile, which in turn points to the gemspec file. This is fine when you gem as a library.
#    But when you are packaging , we need to specify the dependencies in Gemfile itself.
#
# gem install bundler
# bundle gem test_gem
# gem build test_gem.gemspec # name of the gemspec file.

# gem install test_gem
# gem list

# We can create our machine as a source for a gem by running it a a gem server
  # gem server # this will start the gem server on port 8808
# now from another machine
  # gem install test_gem --source <machine_name>:8808

# https://quickleft.com/blog/engineering-lunch-series-step-by-step-guide-to-building-your-first-ruby-gem/
# https://code.tutsplus.com/tutorials/gem-creation-with-bundler--net-25281
# http://icebergist.com/posts/creating-and-publishing-a-ruby-gem/

# To provide the users with executables, you can use ocra. Once you package using ocra, it will give you an executable,
# which you can execute w/o installing Ruby.

###### Resources
# rubydoc.info
# rubygems.org
# ruby-lang.org
# ruby-toolbox.com, rspec.info, cukes.info

