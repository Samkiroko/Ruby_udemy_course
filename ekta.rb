# Ekta = ['lovely beatiful', 'geat developer', 'amazing to spend time with'].freeze

# Ekta.each do |ekta|
#   puts "Ekta is #{ekta}"
#   puts 'i miss you'
# end
# fives = [5, 10, 15, 20, 25, 30, 35, 40]

# fives.each do |number|
#   puts number if number.even?
# end
arr = [5, 6, 7, 8, 9, 10, 26, 45, 67]

def print_if(array)
  array.each_with_index do |number, index|
    if index > number
      puts "WE have a match is #{index} and the number #{number}"
      puts "the product is #{index * number}"
    end
  end
end

print_if(arr)
