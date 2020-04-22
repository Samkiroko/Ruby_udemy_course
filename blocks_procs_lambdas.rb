# What is a block?
# A block is a correction of code to be excuted
# block must be attached to method call
# blocks alter the excution of the method
# ablock is not an argument / parameter to the method
# Block can be defined with {} or do end
# A block can get or update the value of local variable within the block

# Methods can be invoked over and over
# In comprison, ablock will only  be called once, then disappear
# A block isolates action away from the method

evens = [2, 5, 6, 7, 8, 8]

evens.each { |num| puts num**2 }

# the yield
def pass_control
  puts 'This is inside the methods'
  yield
  puts "Now i'm back inside the method"
end

pass_control do
  puts 'This is line 1 of my block'
  puts 'Yay, still inside the block!'
end

def who_am_i
  adj = yield
  puts "I am very #{adj}"
end

who_am_i { 'charming' }

# procs : funtion as saved method
# a = [2, 3, 4, 9, 8]
# b = [6, 3, 9, 1, 4]
# c = [4, 5, 8, 8, 9]

# a_cubes = a.map { |num| num**3 }
# b_cubes = b.map { |num| num**3 }
# c_cubes = c.map { |num| num**3 }

# p a_cubes
# p b_cubes
# p c_cubes

# using Proc
cubes = proc { |number| number**3 }

a = [2, 3, 4, 9, 8]
b = [6, 3, 9, 1, 4]
c = [4, 5, 8, 8, 9]

a_cubes, b_cubes, c_cubes = [a, b, c].map { |array| array.map(&cubes) }

p a_cubes
p b_cubes
p c_cubes

# proc example
currencies = [10, 39, 49, 65, 78]

to_euros = proc { |currency| currency * 0.95 }
to_rupee = proc { |currency| currency * 68.13 }
to_kes = proc { |currency| currency * 100.95 }

p currencies.map(&to_euros)
p currencies.map(&to_rupee)
p currencies.map(&to_kes)

# another example
ages = [10, 45, 69, 43, 67, 78]

is_old = proc do |age|
  age > 50
end

p ages.select(&is_old)
p ages.reject(&is_old)

# the .block_given? Method

def pass_control_on_condition
  puts 'inside the method '
  yield if block_given?
  puts 'Back inside the method'
end

pass_control_on_condition { puts 'hi inside the yield' }

# yielding with Arguments
def speak_the_true
  yield 'Samuel Kiroko' if block_given?
end

speak_the_true { |name| puts "#{name} is a brilliant!" }
speak_the_true { |name| puts "#{name} is a Incredible" }

# another way to code the above

def speak_the_trueth(name)
  yield name if block_given?
end

speak_the_trueth('Samuel Kiroko') { |name| puts "#{name} is a super brilliant!" }
speak_the_trueth('Samuel Kiroko') { |name| puts "#{name} is a sinior developer" }

# benefit of yield by storing the methods

def number_evalution(num1, num2, num3)
  puts 'inside the method'
  yield num1, num2, num3
end

sum = number_evalution(45, 60, 70) { |num1, num2, num3| num1 + num2 + num3 }
product = number_evalution(45, 60, 70) { |num1, num2, num3| num1 * num2 * num3 }

p sum
p product

# A custom .each method
def custom_each(array)
  i = 0
  while i < array.length
    yield array [i]
    i += 1
  end
end

names = %w[kiroko njuhi nganga]
ages = [31, 35, 39]

custom_each(names) do |name|
  puts "The length of #{name} is #{name.length}!"
end

custom_each(ages) do |age|
  puts "The square of #{age} is #{age**2}"
end

# procs II
def greater
  puts "I'm inside the greater method"
  yield
end

phrase = proc do
  puts 'inside the proc'
end

greater(&phrase)

# pass a ruby method as proc
# p ["1", "3", "5","6"].map {|num|num.to_i}
# above in a simpler way
p %w[1 3 5 6].map(&:to_i)

# methods with proc parameters
def talk_about(name, &myproc)
  puts "Let me tell you about #{name}"
  myproc.call(name)
end

good_things = proc do |name|
  puts "#{name} is a genius!"
  puts "#{name} is a happy man with greate heart"
end

bad_things = proc do |name|
  puts "#{name} is a dolt"
  puts "I can't stand #{name}"
end

talk_about('Sam Kiroko', &good_things)
talk_about('Johnmyles', &good_things)

talk_about('billy', &bad_things)

# introduction to lambdas

square_lambda = ->(num) { num**2 }
square_proc = proc { |num| num**2 }

p [1, 2, 3].map(&square_lambda)
p square_lambda.call(5)

p [1, 2, 3].map(&square_proc)
p square_proc.call(5)

#    big difference between  proc and lambda proc does care about argument if not
#  provided will return nil or empty space
#  On the other hand lambda to care if you don't provide argument with that
#  it will through an error

some_proc = proc { |name, age|
  "your name is #{name} am #{age} years old"
}

p some_proc.call('Boris', 25)
# even without providing an argument proc will still return
p some_proc.call('sam')

some_lambda = lambda { |name, age|
  "your name is #{name} am #{age} years old"
}

p some_lambda.call('samuel', 30)

# if i dont provide an argument will give an error
# p some_lambda.call("samuel", )

# use case of lambda
to_euros = ->(dollars) { dollars * 0.95 }
to_pesos = ->(dollars) { dollars * 20.85 }
to_ksh = ->(dollars) { dollars * 100.4 }

def convert(dollars, currency_lambda)
  currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end

p convert(1000, to_euros)
p convert(1000, to_pesos)
p convert(1000, to_ksh)

p [1000, 567, 5965].map(&to_kes)
