# the .start_with? and .end_with? methods
pharse = 'The ruby programming language is amazing!'
substr = 'zing!'
search_for = 'hyena'

puts pharse.start_with?('The ruby')
puts pharse.start_with?(' ruby')

puts pharse.end_with?('amazing!')
puts pharse.end_with?('amazing')

# custom method
def custom_start_with?(string, substring)
  string[0, substring.length] == substring
end

def custom_end_with?(string, substring)
  string[-substring.length..-1] == substring
end

puts custom_end_with?(pharse, substr)

# the .include? method
puts pharse.include? 'ruby'
puts pharse.include? 'zebra'

# custom include? method
def custom_include?(string, substring)
  len = substring.length
  string.chars.each_with_index do |_char, index|
    return true if string [index, len] == substring
  end
  false
end

p custom_include?(pharse, search_for)

# WHAT IS A REGULAR EXPRESSION?
# => A regular expression is another ruby object.The class is Regexp.
# Regular expression are used to match pattern in string
# Regular expression are created with two forward slashes (//) syntax
# The conditon is placed between the two forward slashes.

pharse = 'The Ruby programming language is amazing '
# give the first occurence of g
puts pharse =~ /g/
puts pharse =~ /ing/

# the .scan method I
voicemail = 'i can be reached at 555-123-4567 0r sam@gmail.com'
#  will retrun => ["e", "e", "e"]
p voicemail.scan(/e/)
# any occurence [re] of r and e
p voicemail.scan(/[re]/)

# The .scan method II
p voicemail.scan(/\d+/) { |digit_match| puts digit_match.length }

# The wildcard symbol
puts voicemail.scan(/.am/)
puts voicemail.scan(/gm.il/)
puts voicemail.scan(/\d.\d.\d/)

# The Blackslash
paragraph = 'This is my essay.I deservevan A. I rank it a 5 out of 5.'
# any digit
p paragraph.scan(/\d/)
# any non-digit
p paragraph.scan(/\D/)
# any white space character
p paragraph.scan(/\s/).length

p paragraph.scan(/\S/)

# RegEx Anchor
poem = '99 bottles of beer of the wall, 99 bottles of beer'
# first digit
p poem.scan(/\A\d/)
# end of the string
p poem.scan(/\z/)

# Exclude characters
sales = 'I bought 9 apples, 25 bananas, and 4 oranges at the store.'

p sales.scan /[^aeiou,\s\d\.] /

# The .sub and .gsub methods with regular expressions
word = 'aspirin'

p word
word.sub!('in', 'ing')

p word

puts '0713 356 169'.gsub!(' ', '')
puts '(0713)-356 169'.gsub!(/[-\s\(\)]/, '')

# rubular.com site to practice regular expression

puts 5**5

def findDigits(n)
  sum = 0
  n.to_s.split('').map(&:to_i).each do |digit|
    sum += 1 if digit != 0 && n % digit.zero?
  end
  sum
end

p findDigits(111)
p 111.to_s.split('')
