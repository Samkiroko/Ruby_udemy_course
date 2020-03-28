# Array iteration and various methods
# count the number of iteration
# {} used for single line
3.times { |number| puts "hello there #{number}" }

# do is used for multiple line
5.times do |number|
  square = number * number
  puts "puts current number is #{number} and it square is #{square}"
end

# the .each method => it iterated through the method in order
candies = ['sour patch kids', 'MIllky', 'airheads']

candies.each do |candy|
  puts "i love eating #{candy}"
  puts 'it taste do good'
end
names = %w[bo moe joe]

names.each { |name| puts name.reverse }

fives = [5, 10, 15, 20, 25, 30, 35, 40]
odds = []
evens = []

# fives.each do |number|
#   puts number if number.odd?
# end
# fives.each do |number|
#   odds << number if number.odd?
# end
# p odds
# challage keep the numbers in the respective categories odds or even?

fives.each do |number|
  if number.odd?
    odds << number
  else
    evens << number
  end
end
p odds
p evens

# ternary option
fives.each do |number|
  number.odd? ? odds << number : evens << number
end
p odds
p evens

# single line option
fives.each { |number| number.odd? ? odds << number : evens << number }
p odds
p evens

#  creating a method

def evens_and_odds(array)
  odds = []
  evens = []
  array.each { |number| number.odd? ? odds << number : evens << number }
  p odds
  p evens
end
evens_and_odds fives
evens_and_odds [34, 23, 45, 34, 56, 45, 66, 23, 7, 8]

# challage getting all possible combanation
# each within each
shirts = %w[striped plain white plaid pand]
ties = %w[polka dot solid color boring]

shirts.each do |shirt|
  ties.each do |tie|
    puts "OPTION: A  #{shirt} shirt and a #{tie} tie"
  end
end
# the for loop NOTE the the variable in the loop is kept in the memory
numbers = [3, 5, 7]

numbers.each do |num|
  puts num
end
# the .each with index method
colors = %w[Red Blue Green Yellow]

colors.each_with_index do |color, position|
  puts "moving to #{position}"
  puts "The current color is #{color}"
end

# challage
#  write a loop that interates over a numeric array
# OUtput the PRODUCT of each number and its index position

fives = [5, 10, 26, 45, 67]

fives.each_with_index do |num, i|
  puts "The current value is #{num} at index #{i}"
  puts num * i
end

# challage : write a loop that gives me a sum of the product of each index of each and its value
fives = [5, 10, 26, 45, 67]
sum = 0

fives.each_with_index do |num, i|
  result = num * i
  sum += result
end
p sum

# challage :
# print the product of the element and its index pos
# if the index position its greater than the element
# create this within a method

arr = [5, 6, 7, 8, 9, 10, 26, 45, 67]

def print_if(array)
  array.each_with_index do |number, index|
    if index > number
      puts "WE have a match is #{index} and the number #{number}"
      puts "the product is #{index * number}"
    end
  end
end

print_if([4, 5, 6, 65, 5, 4, 3, 5, 5, 56, 7, 67])
print_if(arr)

# the .map and .collect methods which retruns brand new array
numbers = [5, 3, 43, 67, 6, 8, 9]
square = numbers.map { |number| number**2 }

p square

# using do option
fahr_temp = [105, 73, 40, 18, -2]

celsius_temp = fahr_temp.map do |temp|
  minus32 = temp - 32
  minus32 * (5.0 / 9.0)
end
p celsius_temp

# cubes using .map
numbers = [5, 3, 43, 67, 6, 8, 9]
cubes = numbers.map { |cube| cube**3 }

p cubes
#  method option

def cubes(array)
  array.map { |cube| cube**3 }
end

p cubes(numbers)
p cubes([23, 34, 56, 78, 98, 65, 45])

# iteration over array with while or until loops
animals = %w[Lion Zebra Baboon Cheetah]

i = 0
while i < animals.length
  puts i
  puts animals[i]
  i += 1
end

# until
until i >= animals.length
  puts i
  puts animals[i]
  i += 1
end

prizes = %w[pyrite pyrite pyrite gold pyrite pytrite]

i = 0
while i < prizes.length
  current = prizes[i]
  if current == 'gold'
    puts 'Yeah! found gold'
    break
  else
    puts "#{current} is not gold!"
  end
  i += 1
end

numbers = [1, 3, 4, 5, 'hello', 6, 7, 8, 9]

numbers.each do |num|
  if num.is_a?(Integer)
    puts "The square of #{num} is #{num**2}"
  else
    puts 'thats not a valid number '
    break
  end
end

# the next keyword
number = [1, 3, 4, 5, 'hello', 6, 7, 8, 9]

number.each do |num|
  next unless num.is_a?(Integer)

  puts "The square of #{num} is #{num**2}"
end
# reverse methods
p [1, 2, 3].reverse!

# .sort method
# not that ruby have priority with upcass letters
number = [5, 23, -2, 45]
p number
p number.sort
p number.sort!
p number.reverse

# .concat method
p [1, 2, 3] + [4, 5, 6, 7]
p [1, 2, 3].concat([4, 5, 6, 7])

# quicl challage'
a = [1, 2, 3, 4]
b = [5, 6, 7, 8, 9]

def custom_concat(arr1, arr2)
  arr2.each { |er| arr1 << er }
  arr1
end
p custom_concat(a, b)
p a
# .max and min method
stock_prices = [723.99, 434.2, 84.6, 589.9]

# challage
# def custon_max(_arr)
#   arr.max
# end

# def custon_min(_arr)
#   arr.min
# end

def custon_max(arr)
  return nil if arr.empty?

  max = arr[0]
  arr.each do |value|
    max = value if value > max
  end
  max
end

p custon_max([])
p custon_max([2, 3, 5, 1, 67, 3, 8, 3, 45, 67, 89, 47])

def custom_min(arr)
  return nil if arr.empty?

  min = arr[0]
  arr.each do |value|
    min = value if value < min
  end
  min
end

p custom_min([])
p custom_min([23, 45, 6, 7, 1, 2, 67, 78, 90])

# the .include? predicate method on an array returnin (true/false)
numbers = [1, 2, 4, 5, 6, 7]

p numbers.include?(7)
p numbers.include?(19)

# the .index and .find_index methods on an array
# help you know the index number of items in array
colors = %w[red Blue green]

p colors.index('red')

# the .select method on an array
grades = [80, 45, 67, 34, 23, 57, 89, 90]

matches = grades.select do |num|
  num >= 75
end

p matches

#  using select on strings
words = %w[level selfless racecar dinosaur]

palindromes = words.select { |word| word == word.reverse }

p palindromes

# the .reject method opposite what .select does
animals = %w[cheetah cat lion elephant dog cow]

reject_result = animals.reject { |animal| animal.include?('c') }

p reject_result
# unpack a multidemensional array

users = [['Bod', 25, 'male'], ['Susan', 48, 'famele'], ['Samuel', 30, 'Male']]

Bob, Susan, Samuel = users

p Bob
p Susan
p Samuel

# the .partition method on arr
foods = ['steak', 'vegetable', 'steak burger', 'kale', 'tofu', 'tuna', 'tuna steak']

good, bad = foods.partition { |food| food.include?('steak') }

p good
p bad
grades = [80, 45, 67, 34, 23, 57, 89, 90]
def evens_and_odd(numbers)
  numbers.partition do |num|
    return evens if num.even?

    odds
  end
end
evens_and_odds(grades)
