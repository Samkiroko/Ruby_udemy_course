# # create hash with Default value
# fruit_prices = { banana: 100 }

# p fruit_prices[:banana]
# # this below will return nil
# p fruit_prices [:orange]

# # creating a default value
# fruit_prices = Hash.new('NOt found')

# fruit_prices[:banana] = 100
# fruit_prices[:orenge] = 200
# fruit_prices[:apple] = 400

# p fruit_prices[:appple]
# p fruit_prices[:banana]

# # covert hash to Array and vice versa
# spice_girls = {
#   scary: 'Melanie Brown',
#   sporty: 'Melanie Chisholm',
#   baby: 'Emma Bunton',
#   ginger: 'Geri Halliwell',
#   posh: 'victoria Beckham'
# }
# #  covert to an array
# p spice_girls.to_a
# # remove []
# p spice_girls.to_a.flatten

# # vise versa
# sport_g = [[:scary, 'Melanie Brown'],
#            [:sporty, 'Melanie Chisholm'],
#            [:baby, 'Emma Bunton'],
#            [:ginger, 'Geri Halliwell'],
#            [:posh, 'victoria Beckham']]
# #  coverting into hash
# p sport_g.to_h

# the .sort and sort_by Methods on a Hash

# p spice_girls.sort
# p spice_girls.sort.reverse
# spice_by = spice_girls.sort_by
# #  sort by keys
# p spice_girls.sort_by { |spice_girls, _type| spice_girls }
# p spice_girls.sort_by { |spice_girls, _type| spice_girls }.reverse

# puts
# # sort by values
# p spice_girls.sort_by { |_spice_girls, type| type }
# p spice_girls.sort_by { |_spice_girls, type| type }.reverse

# the .key? and value? Methods on a Hash

# cars = {
#   toyota: 'camry', chevrolet: 'aveo',
#   ford: 'F-150', kia: 'soul'
# }
# puts cars.value?
# puts cars.key?

# Hashes as Method Arguments
def calculate_total_1(price, tip, tax)
  tax_amount = price * tax
  tip_amount = Price * tip
  price + tip_amount + tax_amount
end

bill = { price: 24.99, tip: 0.18, tax: 0.07 }

def calculate_total_2(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tax_amount + tip_amount
end

p calculate_total_2(bill)

# the .delete method on hash
supreheroes = { spiderman: 'peter parker', superman: 'clerk kelvin',
                batman: 'Bruce wayne' }

p supreheroes

supreheroes.delete(:spiderman)
supreheroes.delete(:batman)

p supreheroes

# the .select and .reject methods on a hash

recipe = { sugar: 5, flour: 10, salt: 2, Pepper: 4 }

high = recipe.select { |_ingredient, teaspoons| teaspoons >= 5 }
p high

low = recipe.reject { |_ingredient, teaspoons| teaspoons >= 5 }
p low

# the .merge method to combine hashes

market = { garlic: '3 cloves', tomatoes: '5 batches', milk: '3 liters' }
kitchen = { bread: '2 loaves', yogurt: '20 cans', milk: '10 liters' }

p market.merge(kitchen)

def custom_merge(hash1, hash2)
  new_hash = hash1.dup
  hash2.each { |key, value| new_hash[key] = value }
  new_hash
end

p custom_merge(market, kitchen)

# CHALLENGE: WORD FREQUENCY IN A SENTENCE STRING
sentence = 'Once upon a time in a land far far away'

def word_count(string)
  words = string.split(' ')
  count = Hash.new(0)
  words.each { |word| count[word] += 1 }
  count
end

p word_count(sentence)

# test
my_hash = { 'A' => 'An apple', 'B' => 'Big banana', 'C' => 'Cool cat' }
my_hash.key?(:A)
my_hash.sort
