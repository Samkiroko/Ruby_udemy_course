# The case statement
# all to replace elsif
def rate_my_food(food)
  case food
  when 'Githeri'
    'pass the pilipili'
  when 'Mukimo'
    'pass the thukuma'
  when 'ngima', 'muchere', 'ngacii'
    'pass maziwa mala'
  else
    'Nilale njaa'
  end
end
p rate_my_food 'Mukimo'

# using ranges
def calculate_school_grade(grade)
  case grade
  when 90..100
    'A'
  when 80..89
    'B'
  when 70..79
    'C'
  when 60..69
    'D'
  else
    'F'
  end
end

p calculate_school_grade 95
p calculate_school_grade 85
p calculate_school_grade 75
p calculate_school_grade 45

p 'bracking the method'
# using then
def calculate_school_g(grade)
  case grade
  when 90..100 then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  else 'F'
  end
end

p calculate_school_g 75
p calculate_school_g 55
p calculate_school_g 65
p calculate_school_g 85

# negation with !
#  ! represent not/opposetuser = true
p user = !true # will return false
p user = !!true # Negate return true
p user = !45 # false
p user = !!45 # true

# unless keyword
password = 'Smuel'

if password == 'Sam'
  puts "That's the right password, welcome"
else
  puts 'Not allowed'
end

if password == 'kiroko'
  puts 'welcome'
else
  puts 'Not allowed'
end

puts 'it does not include the letter' unless password.include?('a')

# The while keyword

i = 1
while i < 10
  puts i
  i += 1
end
#  authentication example

# status = true

# while status
#   p 'please enter username:'
#   username = gets.chomp.downcase
#   p 'please enter password'
#   password = gets.chomp.downcase

#   if username == 'b' && password == 'sam'
#     puts 'Entry granted, The nuclear code are ..'
#     status = false
#   elsif username == 'quit' || password == 'quit'
#     puts 'Goodbye! Better luck Next time!'
#     status = false
#   else
#     puts "incorrect combination, try again or enter 'quit' to leave "
#   end
# end

# The until keyword
# excuse something when is false
i = 1
# while i < 10
#   puts i
#   i += 1
# end

until i > 9
  puts i
  i += 1
end

# fizzbuzz challage
def fizzbuzz(number)
  (1..number).each do |i|
    if (i % 3).zero? && (i % 5).zero?
      puts "fizzbuzz #{i}"
    elsif (i % 3).zero?
      puts "fizz #{i}"
    elsif (i % 5).zero?
      puts "buzz #{i}"
    else
      puts i
    end
  end
end

fizzbuzz(45)

puts

# statement modifiers / inline modifiers
number = 5000
# if number > 2500
#   puts "Huge number!"
# end
puts 'Huge number!' if number > 2500
# if number > 2500 || varified
#   puts "huge number!"
# end
puts 'huge number!' if number > 2500 || varified

# conditional assignment
greeting = 'hello'

extraction = 20
letter = greeting[extraction]
letter ||= 'Not found'

p letter
