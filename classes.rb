# REVIEW: of the .class method on ruby

puts 'Hello world '.class
puts [1, 2, 3, 4, 4].class
puts Hash.new(0).class
puts true.class
puts false.class
puts nil.class
puts (0..9).class
puts //.class

# the .superclass and .ancestors methods
p 5.class
p 5.class.superclass
p 5.class.ancestors

# the methods method
puts 5.methods.sort

fixnum_methods = 5.methods.sort
float_methods = 3.14.method.sort

puts fixnum_methods & float_methods
puts fixnum_methods - float_methods

# create class
