# interger is a whole number
p 5.class
p 0.class
p 867.class
# floating number with decimal
p 5.676.class
p 6.88.class
p 7.667.class
# convert number to string and vice versa
str = '5'
p str
p str.class
p str.to_i.class

number = 10
p number.class
p number.to_s.class
# converting the number to a float
p number.to_f
p number.to_f.class
# to_s ==> convert to string
# to_f ==> convert to float
# to_i ==> convert to imterger

#  booleans ==> is a statemet of true or false
p 5 < 10
p 5 > 10
# boolean
age = 30
handsome = true
stupid = false

p handsome.class
p stupid.class

# boolean method (return true or false)
# boolean method are not available on float
p 13.odd?
p 14.even?
p 25.even?

# Comparable with the equality (==)
p 10 == 10
p 10 == 11
# on diffrent data type
p '5' == 5
p '6' == '6'

# inequqlity operator(!=)
p 10 != 10
p 'true' != 'true'

# less than and greator than operators (< > <= >=)
p 2 <= 5
p 20 >= 14

# arithmetic methods and basic argument
p 1 + 3
p 10 % 3
p 9 - 1
p 3 * 8
p 3.* 8
puts 'devision'
p 10 / 5
p 10. /5
p 10.div 5
puts 'modulo'
p 10 % 3
p 10.% 3
p 10.modulo 3
# what is parameter?
# - methods on object can accept one or more inputs
# - The technical word for an input is an argument
# - A parameter is the placeholder name assigned to an expected argument
# between?(min,max) -> true or false
puts 'parameters'
p 3.between?(1, 5)
p 6.between?(1, 4)

# float methods
p 10.5.to_i
p 10.5.to_i.class
p 10.5.floor
p 10.5.ceil
p 10.5.round # follow the mathimatical principles
p 3.139345.round(3)
# assigment and reassigment
a = 10
p a
a += 5
p a

b = 100
p b
b -= 50
p b

c = 4
p c
c *= 16
p c
#  blocks
p 'blocks'
5.times { |count| puts "we are on number #{count + 1}"' Call my name' }

# 3.times do |count|
#   puts "we are currently on loop number #{count + 1}"
#   puts 'Samuel is an awosome developer'
#   puts "I'm having so much fun learning ruby"
# end
# challage !! use the times method to output the first
# ten multiple of 3 (3, 6 , 9 , 12 .. 30)

10.times do |count|
  puts 'Alright, let show the next multiple!'
  puts(3 * count + 3).to_s
end
# using {}
10.times { |count| puts "multiple of 3 #{3 * count + 3}" }

# the .upto and .downto methods
# 5.downto(0) { |i| puts "countdown: #{i}" }
# usong block do
# downto example
5.downto(0) do |current_number|
  puts "we are currently on #{current_number}"
  puts 'haaa!!'
end
puts 'liftoff!'
#  upto example
1.upto(10) do |current_number|
  puts "we moving up on #{current_number}"
  puts 'lets go up!!'
end

# the .step method
0.step(87, 9) do |num|
  puts "number  up with 5 #{num}"
end

1.step(78, 7) { |b| puts "number count #{b}" }
