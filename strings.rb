# strings
# can be assigned to varible, space count as charter
# string are written in double quote ""
# empty spaces are valiade charter

puts "Hi there, i'm a string"

name = 'Samuel'
revenue = '23 million '
puts name, revenue

p name.class
name = String.new('Boris')
p name

# multiline_String
words = <<~MLS
  This is a multiline string which is cool
  i like how its out put on the computer

  it look woo in the computer

MLS

print words
