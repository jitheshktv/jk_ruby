class Ninus
  def our_age
    puts "we are 4 years old"
  end
end

ninus = Ninus.new
# ninus.our_country # This will fail since the mehthod is not defined yet.

class Ninus # this will not over write the class, but reopen/append.
  def our_country
    our_age
    puts "we are born in USA"
  end
end

ninus.our_country # this will work, even though the object was created before the class was reopened with the new method.

# ----------------------------------------
class JK
  private
  def my_home
    puts "India"
  end
end

jk=JK.new

class JK
  def my_home # This will redefine the class. even if the class is defined as private initially, it will be redefined as public.
    puts "It's now in USA"
  end
  #private :my_home # The class needs to be reset as private, since the redefinition will make it public.
end

jk.my_home

# Monkey patching can be used to override the third party libraries and to fix bugs with those.
# We will need to be careful though and might need to remove this after a third party library
# patch to fix this is implemented.

