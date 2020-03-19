puts 'Hello world'
puts 'hello world'

puts "juliet said 'Goodbye' to romeo"
# using escape charter
puts 'Juliet said "GOODBYE" to romeo '

# line break
puts "Let's add aline break\n right here"
results = "Let's add aline break\n right here"
puts results
p results
# and tab
puts "\t insert the tab here"
# single quote and double quote
puts "Hello\nworld"
#  you can do line break on single
puts 'Hello\n world'
# also single do not interplate pharse
# puts pharse.to_s
# puts '#{pharse}'
# equality and inequality operators with strings
a = 'Hello'
b = 'hello'
c = 'Hello'

p a == c
p b == a

p 'A' < 'a'
# concatenate strings
first_name = 'Samuel '
last_name = 'Kiroko N '
# p first_name + lasr_name
#  using concat method
# p first_name.concat(last_name)

# p first_name << last_name << ' giniours developer'

# prepend
p first_name.prepend(last_name)

# the .length and .size methods they return the same
a = 'hello world'
b = 'hi, my name is Samuel kiroko N'
c = ' '
d = ''

p a.length
p b.length
p c.length
p d.length

puts

p a.size.odd?
p b.size.odd?
p c.size.odd?
p d.size.odd?
# extract single charcter from string with bracket syntax
# mutable can chang
story = 'once upon time we leaved on fear land'
p story.length
# computer count form zero / index podition
# if the index position does exit will return nil
p story[-1]
# slice method/ which work the same with index position
p story.slice(3)
# extract multiple character
p story[5, 4]
p story.slice(0, story.length)
# range object
p story[27..39]
p story.slice(27..39)
# three dots will exclude end index position
p story[27...39]
p story[-9..7]
# overwrite characters
thing = 'rocket ship'
p thing[0] = 'p'
p thing
fact = 'i love blueberry pie'
p fact
fact[7, 4] = 'rasp'
p fact
# case methods
puts 'samuel kiroko'.capitalize
# all caps
puts 'samuel kiroko'.upcase
puts 'SAMUEL KIROKO'.downcase
puts 'SaMuE'.swapcase
#  reverse methods
puts '123456'.reverse
# method chaing
puts 'ruby is fun '.upcase.reverse
# bang methods / it modify or multate
word = 'hello'
p word.capitalize!
p word
p word.upcase!
p word
p word.downcase!
p word
p word.reverse!
p word
# .include? method
name = 'snow white'
p name.include?('s')
p name.include?('S')
p name.downcase.include?('snow')
# .empty? == string length is 0
p ''.empty?
p 'false'.empty?
# .nil? check if the object is neil will retrun a bolean
name = 'Samuel kiroko'
last_name = name[100, 4]
p last_name
p last_name.nil?
