# what is a hash
# a hash or hash map  is data structure that stores key-value pairs
# hashes are called dictionaries, maps ,or associative arrays in other languages
# A hash object connects unque identifier
#  rules of the hash
# Hash keys must be unique (no duplicates)
# hash values can contain duplicates

empty_hash = {}
p empty_hash
p empty_hash.class

# create  hash and extract values from hashes by their keys
# when you input a key that does not exist will return nil

nfl_roster = { 'Tom Brady' => 'New England patriots',
               'Tony Romo' => 'Dallas Cowboys',
               'Rob Gronkowski' => 'New England Patriots' }

nba_roster = {
  'cleveland Cavaliers' => ['ken Mujuba', 'Samuel K', 'Kelvin Titi'],
  'Land Cav' => ['Sen Mujuba', 'Sammy Kiroko', 'Kel Tii']
}

p nfl_roster['Tom Brady']

p nba_roster['cleveland Cavaliers']

# intro to symbols and symbols as hash
# :name

p :name.methods.length

person = { name: 'Samuel Kiroko',
           age: 30,
           handsome: true,
           languages: %w[Ruby Python Javascript] }

p person[:name]
p person[:age]

# Convert Symbols to string and vice versa
p :age.class
p :age.to_s
p :age.to_s.class
# vice versa
p 'age'.to_sym
p 'age'.to_sym.class

# the .fetch method on hash
menu = { burger: 400, taco: 500, chips: 100 }

p menu[:burger]
p menu[:chips]
p menu[:salad]

p menu.fetch(:burger)
p menu.fetch(:burger)
p menu.fetch(:salad, 'Not found')

# Add akey value pair to hash with Bracket syntax or the .store Method
menu[:sandwich] = 800
p menu
# store method
menu.store(:streak, 300)
p menu
p menu[:streak]

# The .length method on hash
shopping_list = { banana: 5, orange: 10, carrots: 3, crackers: 15 }
vegan_shopping_list = {}

p shopping_list.length
p vegan_shopping_list.length

p vegan_shopping_list.empty?
p shopping_list.empty?

# the .each method on hash
# first element is key the second is value pair
capitals = { alabama: 'Montgomery', alaska: 'Juneau', Arizona: 'Phoenix' }

capitals.each do |state, capital|
  puts 'Querying hash ...'
  puts "The capital of #{state} is #{capital}"
end

# implement a "value_count" method and accept a hash and value as an argument.
# The method should return number of times the value appears among
# all the values in the hash:

hash = { a: 5, b: 2, c: 3, d: 5 }

def value_count(hash, value)
  hash.values.count(value)
end
p value_count(hash, 2)

# The .each_key and .each_value Methods

salaries = { director: 1000, producer: 2000, ceo: 3000 }

salaries.each_key do |position|
  puts 'Employee record:___'
  puts position.to_s
end

def gets_keys_from_hash(hash)
  keys = []
  hash.each do |key, _value|
    keys << key
  end
  keys
end

def gets_values_from_hash(hash)
  values = []
  hash.each do |_key, value|
    values << value
  end
  values
end

p gets_keys_from_hash(salaries)
p gets_values_from_hash(salaries)

# retriving keys and values form hash
p salaries.values
p salaries.values.uniq
p salaries.values.uniq!

p salaries.keys
p salaries.keys.uniq
p salaries.keys.uniq!
