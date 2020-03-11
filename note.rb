# it output a string and add line braek
puts 'see, at 10pm  tonight'

# print does not add line break
print "hello\n"
print 'world'
print '  '

# p tag output with vision is a string with double quote
p 'hai hope well, be nice night'

# operators
p 10 - 9
# joining to string
p 'school' + 'mate'

# x to the power of
p 2**9

# remaider of devison of the operation (modulo)
p 13 % 4

# varible are placeholder of a object
# varible store infomation
# varible can be reassigned
name = 'Samuel'
lass_name = 'kiroko'
Handsome = 'true'.freeze
age = 24 + 1

puts name
puts name + ' ' + lass_name
puts Handsome
puts age

a = 1
b = 3

p a, b

a, b = b, a

p a, b

# constant an like variable they don't change
# writen in caps
NAME = 'Samuel'.freeze
PI = 3.14159

p NAME
p PI
# object methods
# methods is message sent object to do something
p 'hello world'.length
p 'hello world'.upcase
p 'HELLO WORLD'.downcase

foo = 'hello Samuel kiroko'
p foo.length
p foo.upcase
p 10.next

puts 'hello world'.inspect
puts 45.inspect
# string interpolation (insert something in something else)
p 6
p 6.next
# convert interger into string
p 6.to_s
name = 'samuel'

p "Hello #{name}, how are you"
age = 30
p "I am #{age} years old"
p "The result of adding 1 + 1 is #{1 + 1}"
