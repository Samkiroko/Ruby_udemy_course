# # the .split method on a string
# # sentences = 'Hi, hope you are doing well. in your programming work'

# p sentence.split
# p sentence.split('.')

# words = sentence.split

# words.each { |word| puts word.length }

# def longest_word(sentence)
#   longest = sentence.split(“(“)) # convert a string into an array
#   longest.sort_by!(&:length).reverse!
#   # sort by the length and start with the longest one
#   longest[0] # return the first item of the array (with 0 index)
# end
# longest_word(sentences)
# # output would be

# iterate over string characters
'Hello world'.each_char { |char| puts char }

'Samuel kiroko'.each_char do |inil|
  puts inil
end
#  others ways
name = 'Kiroko'

# p name.split('')
letters = name.chars
letters.each do |letter|
  puts "#{letter} is awosome!"
end

# the .join method on string
names = %w[Joe Moe Bob]

# p names.join('!---!')

# challage
def custom_join(array, delimiter = '')
  string = ''
  last_index = array.length - 1
  array.each_with_index do |elem, index|
    string << elem
    string << delimiter unless index == last_index
  end
  string
end

p custom_join(names)
p custom_join(names, '-')
p custom_join(names, '!!---!!')

# the .count method on string
# it take argument of how many element in the string

puts 'Hello world'.count('H')

# challage
def custom_count(string, search_characters)
  count = 0
  string.each_char do |char|
    count += 1 if search_characters.include?(char)
  end
  count
end

puts custom_count('An amazin aawork here at the uuudemay', 'a')

# The .index and .rindex methods on a string
fact = 'am very handsome'
p fact.index('h')
p fact.index('h')
p fact.index('ha')
p fact.index('ve')

# can have second argument to mark starting index
p fact.index('h', 5)

# .rindex start form reverse

p fact.rindex('h')

# challage
def custom_index(string, substring)
  return nil unless string.include?(substring)

  length = substring.length
  string.chars.each_with_index do |_char, index|
    sequence = string[index, length]
    return index if sequence == substring
  end
end
p custom_index(fact, 'i')
p custom_index(fact, 'h')
p custom_index(fact, 'z')
p custom_index(fact, 'am')

# the .insert method on a string
typo = 'Georgwashington'

typo.insert(5, 'e')
typo.insert(6, ' ')

p

# the squeeze
sentence = 'thhe aardvark jummped ovver the ffence'
# puts sentence.squeeze
# puts sentence.squeeze!

def custom_squeeze(string)
  final = ''
  chars = string.split('')
  chars.each_with_index do |char, index|
    if char == chars[index + 1]
      next
    else
      final << char
    end
  end
  final
end

p custom_squeeze(sentence)

#  The .clear method on astring
word = 'goodby '

p word
word.clear
p word

# the .delete mrthod on a string
puts 'Hello world'.delete('ldr')

def custom_delete(string, delete_characters)
  new_string = ''
  string.each_char do |char|
    new_string << char unless delete_characters.include?(char)
  end
  new_string
end
p custom_delete('hello', 'h')

p 'Sally sells seashells by the seashore'.split('s')
