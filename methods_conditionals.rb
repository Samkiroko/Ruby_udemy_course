# method is a grouped collection of statements that serves a purpose
# designed to be reused
# abstract the complexity of solving problem
# a method is first defined with a set of ruby statement
# then we call or invoked
def introduce_myself
  puts 'am handsome'
  puts 'i am talented'
  puts 'i am brilliant'
end
introduce_myself
# local variable
# anything which is defined in the method its local to that method eg expression is local
# to the below method
def intro
  expression = 'am a genius'
  puts expression
end
intro
# parameters and arguments
def praise_person(name, age)
  puts "#{name} is amazing he is #{age}"
  puts "#{name} is charming #{age}"
  puts "#{name} is talented #{age}"
  puts "His age is #{age}"
end
praise_person 'Samuel Kiroko', 25
praise_person 'Mum', 30
#  Return values
def add_two_numbers(num1, num2)
  puts 'OK, am solving your math problem'
  num1 + num2
end
p add_two_numbers 3, 5
# default return value for a method is nil
# def nothing

# end
# p nothing

# if statement gives a logic and decision
# return puts 'true' if 4 < 7

# password = 'topsecret'
# puts "Congrats, you've logged in" if password == 'topsecret'

# word = 'kiroko'
# puts 'the word is lengthy' if word.length == 7

# truthiness and falsiness
# the only falsiness value false and nil
puts 'That is true' if 5 # truthiness
puts 'That is true' if nil # falsines
puts 'That is true' if 0

puts 'that is true' if 5 < 8

# if elsif
color = 'yellow'

if color == 'red'
  puts 'put is rad'
elsif color == 'Green'
  puts 'Green is great'
elsif color == 'yellow'
  puts 'yay for yellow'
end
# if elsif with number
number = 50

if number < 25
  puts 'that a low number'
elsif number <= 50
  puts 'that is a number in the middle!'
elsif number < 75
  puts 'this a big number'
end
# the else keyword
grade = 'C'

if grade == 'A'
  puts 'that is an excellent grade.Good job'
elsif grade == 'B'
  puts 'that a good grade'
else
  puts "don't come home at all"
end
# odd or even funtion
def odd_or_even(number)
  if number.odd?
    'That number is odd'
  else
    'that number is even'
  end
end

p odd_or_even(10)

# multiple condition with && operator
age = 18
ticket = 'General Admission'
id = true

puts 'Congratulation, welcome to the show!' if age > 21 && ticket == 'General Admission' && id == true

if age > 21 && ticket && id
  puts 'congratulation, welcome to the show'
elsif ticket && id
  puts 'Alright, you get it anyway'
end
# Multiple conditions with || operator
# if one varible is true the  rest of the function evaluate to true

budget = 5
price = 10
mood = 'Happy'

puts "I'm going to buy the item!" if budget > price || mood == 'Happy'

# parentheses and precedence
def authenticate_agent(rank, name, credentials)
  if (rank == '007' && name == 'Jame Bond') || credentials == 'secret Agent'
    puts 'Access granted, please proceed to intelligence department'
  else
    puts "Access dennied, #{name}"
  end
end
authenticate_agent '007', 'Jame Bond', 'spy'
authenticate_agent '006', 'sam ', 'spy'

# nested if statement
def meal_plan(time_0f_week, time_of_day)
  if time_0f_week == 'weekday'
    if time_of_day == 'Breakfast'
      'Cereal'
    elsif time_of_day == 'Lunch'
      'Sandwich'
    elsif time_of_day == 'Dinner'
      'Chickle Nuggets'
    end
  elsif time_0f_week == 'weekend'
    if time_of_day == 'Breakfast'
      'French Toast'
    elsif time_of_day == 'Lunch'
      'BBQ Chiken Pizza'
    elsif time_of_day == 'Dinner'
      'Steak'
    end
  end
end
p meal_plan('weekday', 'Lunch')
p meal_plan('weekend', 'Dinner')

# the .respond_to? Method
# will retrun true or false
num = 1000
p num.respond_to?('.length')

puts 'Hello World'.respond_to?(:next)
puts 'Hello World'.respond_to?('length')
puts 'Hello World'.respond_to?('even?')
puts 'Hello World'.respond_to?(:upcase)
puts 'Hello World'.respond_to?(:downcase)

# Ternary Operator
if 1 < 2
  puts 'yes, it is!'
else
  puts "No, it's not!"
end
# above is the same using ternary operator
puts 1 < 2 ? 'Yes, it is!' : "no, it's not!"

puts 'yes' == 'yes' ? 'the two are equel' : 'the two are not equel'
# example with a string
def even_or_odd(number)
  number.even? ? 'That number is even ' : 'That number is odd'
end
p even_or_odd 5
p even_or_odd 8

# exercise
pokemon = 'Charizard'

if pokemon == 'Charizard'
  puts 'Fireball!'
else
  puts 'That is not Charizard'
end
# tanary oparator
puts pokemon == 'Charizard' ? 'Fireball!' : 'That is not Charizard'
#  make it a method

def check_pokemon(pokemon)
  pokemon == 'Charizard' ? 'Fireball!' : 'That is not Charizard'
end

p check_pokemon 'Pikachu'
p check_pokemon 'Charizard'

# Default or optional parameters
# default parameter to be place at the end
def make_phone_call(number, international_code = '+254', area_code = 7)
  puts "calling #{international_code}-#{area_code}#{number}"
end
make_phone_call 13_356_169
make_phone_call 20_599_174, '+254'
# call a method from another method or interpolation string
def add(a, b)
  a + b
end

def substract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def calculator(a, b, operation = 'add')
  if operation == 'add'
    "The result of adding is #{add(a, b)}"
  elsif operation == 'substract'
    "The result of substracting  is #{substract(a, b)}"

  elsif operation == 'multiply'
    "The result of multiplying  is #{multiply(a, b)}"
  else
    "That's not a real math operation, genius! "
  end
end
p calculator(34_545, 14_665, 'substract')
p calculator(33_545, 16_767, 'add')
p calculator(37, 1676, 'multiply')
p calculator(36_565, 1665, 'error')
p calculator(567, 160, 'add')
