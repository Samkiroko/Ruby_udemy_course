# an array is an ordered collection of objects
# [] writen with square blackets
# p []
# p [].class

number = [4, 8, 15, 16, 23, 42]
puts number
p number
print number
puts

toys = ['teddy bear', 'Super soaker', 'board game']
puts toys
p toys
print toys

puts

# array within other arrays
students = [['sam', 25, true], ['sally', 23, true]]
p students
puts students

# shorthand %w (not need to use opening and closing qomma )
names = %w[jack jill john sam james]
p names
# create an array with array.new method
p Array.new(5) # how many value will be represent when creating anew array
# access single array element by index
# if the index doesnt exit it will ruturn nil
fruits = %w[Apple Orange Grape Banana]
p fruits.length
puts fruits[0]
p fruits[2]
puts fruits[3]
# how to get the last item on the array
fruits[fruits.length - 1]
fruits[-1]
# access single array element with .fetch method
names = %w[tom cameron bob]
p names[2]
p names.fetch(100, 'does not exist')

# extract sequential arrsy element with bracket syntax
number = %w[1 2 3 4 5 6 7 8 9 10]
p number[2, 4]
# access sequential array element with a range object
p number[3..7]
# access multiple array elements with the .values_at Method
channels = %w[cbs fox nbc espn upn]
p channels.values_at(0)
p channels.values_at(4, 0, 3)

# .slice method
numbers = %w[1 2 3 4 5 6 7 8 9]
p numbers.slice 3
p numbers.slice 2, 3

# overwrite one or more array Elements
fruits = %w[Apple Orenge Grape Banana]
fruits[1] = 'Watermelon'
p fruits
fruits[10] = 'kiwi'
p fruits

fruits[3, 2] = %w[casnt omulate]

p fruits
# the .length .size and .count
p %w[1 3 4 5 6 7 8 9 hello].length
p %w[1 3 4 5 6 7 8 9 hello].size
p %w[1 3 4 4 4 4 5 6 7 8 9 hello].count(4)

# .empty and .nil methods on an Array
# checking for presence

puts [1, 3, 5].empty?
puts [1, 3, 5].nil?
puts [1, 3, 5].empty?
puts [1, 3, 5].empty?

letters = ('a'..'j').to_a
character = letters[5]
p character
p character.nil?
# the first and last methods in Array
arr = %w[1 2 3 4 5 5]
p arr.first
p arr.last
#  return as an Array
p arr.first(1)
p arr.last(1)

arr = %w[1 3 5 7 8 9 12 34 54]

def custom_first(arr, num = 0)
  # first we take care of the default return
  return arr[0] if num.zero?

  arr[0, num]
end

p custom_first(arr, 6)

def custom_last(arr, num = 0)
  return arr[-1] if num.zero?

  arr[-num..-1]
end

p custom_last(arr, 4)
p custom_last(arr)

# the push merhod, the shovel operator
#  and the .insert method
location = %w[House Airport Bar]
location.push('Kiambu')
p location
puts location
# shovel oparator <<
location << 'Naivasha'
p location

location.insert(2, 'Gathanji')
p location
# .pop method
location.pop
p location
last_item = location.pop
p last_item
# the .shift and .unshift
# same as pop but opposite (remove form start)
location.shift
p location
location.unshift(25)
location.unshift('happy', 'Joy', 'you')
location.unshift(25)
p location

# Equality and inquality  OPerators with Arrays
a = %(2 3 4 5 6)
b = %(2 5 4 5 6)
c = %(2 3 4 8 6)
d = %(2 4 5 6)
e = %(2 4 5 6)

p a == b
p a == c
p d == e

# inequality
p a != b
p a != c
p d != e

# the spaceship operator <=>
p 5 <=> 3
p 3 <=> 5

p %(3 4 5 6) <=> %(3 4 5 6)

# use case of spaceship operator
number = Array(1..10)
target = 5
less_than = []
greator_than = []

number.each do |n|
  less_than << n if n < target

  number.each do |n|
    greator_than << n if n > target
  end
end

p less_than
p greator_than

number.group_by { |n| n <=> target }
p number
#  convert range to arrays with the .to_a method
letters_range = 'A'..'T'
letters_arry = letters_range.to_a
p letters_arry[5]
p letters_arry

# the .is_a? predicate method

arr = %w[a b c]
if arr.is_a?(Array)
  arr.each do |e|
    e
  end
 end
