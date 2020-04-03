# Object pointer and object copies
a = [1, 2, 3]

b = [1, 2, 3]
# p a.object_id
# p b.object_id

# .dup duplicate object

a = [1, 2, 3]
b = a.dup

p a.push(4)
p b.push(5)

# splat arguments
#  can take multiple number of argument
def sum(*numbers)
  sum = 0
  numbers.each { |num| sum += num }
  sum
end
p sum 2, 3, 4, 5, 6

# the .any? and .all?
p [1, 2, 3, 4, 5, 56, 7].any?(&:even?)

p [1, 3, 43, 5, 56, 5, 5].all?(&:odd?)

# the .find and .detect methods
words = %w[dictionary refregerator platypus microwave]

p words.find { |word| word.length > 8 }
p words.detect { |word| word.length > 7 }

lottery = [4, 5, 65, 6, 65, 67, 456]
lottery.find(&:odd?)

p lottery

p lottery.reverse.find(&:odd?)

# the .uniq method on array
numbers = [1, 3, 4, 5, 6, 6, 7]
p numbers.uniq
p numbers.uniq!
#  removes duplicates

def custom_uniq(array)
  final = []
  array.each { |element| final << element unless final.include?(element) }
  final
end

p custom_uniq numbers

# the .compact method on an array
# remove all nil
p [1, nil, 2, 3, nil, 4].compact
p [1, nil, 2, 3, nil, 4].compact!

# sports = ["baseball" nil, "football", nil, nil, "soccer"]

# p sports.compact

# the .inject and .reduce methods on an array
result = [10, 34, 56, 78, 67].reduce(0) do |previous, current|
  puts "The previous value is #{previous}"
  puts "The current value is #{current}"
  previous + current
end

puts result

#  the .flatten method on an array

registrations = [
  %w[Bob Dan Jack],
  %w[Rick Dan2 Jack2],
  %w[Bob3 Dan4 Jack3]
]
p registrations.flatten
p registrations.flatten!

#  the .zip method on an array
names = %w[bo moe joe]
registration = [true, false, false]

p names.zip(registration)

def custom_zip(arr1, arr2)
  final = []
  arr1.each_with_index do |value, index|
    final << [value, arr2[index]]
  end
  final
end
p custom_zip(names, registration)

# the .sample method on array
flovors = %w[chocolate vanilla strawberry run]
p flovors.sample(2)

#  Mutiply an array with Asterisk Symbol
p [3, 4, 5, 6] * 5

def custom_multiply(array, number)
  result = []
  number.times { array.each { |elem| result << elem } }
  result
end
p custom_multiply([23, 45, 67, 67], 3)

# union -combine arrays and exclude Duplicates
a = [1, 3, 4, 5, 6, 6]
b = [3, 4, 4, 46]

def custom_union(arr1, arr2)
  arr1.dup.concat(arr2).uniq
end

p custom_union(a, b)
# Remove array items that exist in another array
p [2, 4, 5, 6, 46, 7, 7, 8, 78, 76] - [4, 5]
# array intersection with the amparsand symbor
# return array of number that appear in each array
p [3, 4, 5, 6, 7, 5, 6] & [4, 5, 6, 4, 2, 3, 5]
