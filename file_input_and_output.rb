# # read from a text file with ruby

# File.open('novel.txt').each do |line|
#   puts line
# end

# # write to a text file with ruby
# # using "w" will replace text if you write, better to use "a"
# File.open('myFirstFile.txt', 'a') do |file|
#   file.puts 'am here to learn ruby language 2'
#   file.write 'am learning well 2'
#   file.puts 'no line break on .write option 3 '
# end

# Remane and Delete a file with ruby
# File.rename('myFirstFile.txt', 'myFirstFile2.txt')

# # File.delete('myFirstFile2')

# File.delete('myFirstFile2.txt') if File.exist?('myFirstFile2.txt')

# command line arguments (ARCV)
ARGV.each do |argument|
  number = argument.to_i
  puts "the square of #{number} is #{number**2} "
end
