# numeric ranges
# two dots(..) includes last number three dots(...) exclude last number of the range
nums = 1..100
p nums.first
p nums.last(6)
p (1..100).first(7)

# alphabetical ranges
alphabet = 'a'..'z'
puts alphabet.last(8)
# The size method on range
number = 143..756
p number.size
# check the value exist within the range
half_alphabet = 'a'..'m'
puts half_alphabet.include?('k')
puts half_alphabet.include?('A')
puts half_alphabet.include?('N')

numbers = -14...79
puts numbers.include?(32)

# Generate a random number with the rand method
# for single interger rand will give random number between o and the number
puts rand(5..6)
