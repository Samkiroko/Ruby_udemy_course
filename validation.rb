class Gadget
  attr_reader :production_number, :apps
  attr_accessor :username

  def initialize(_username, _password)
    @username = "User #{rand(1..100)}"
    @password = 'password'
    @production_number = generate_production_number
    @apps = []
  end

  def to_s
    "Gadget #{production_number} has the #{username} its #{self.class}
    it has id #{object_id}."
  end

  def reset(username, password); end

  def password=(new_password)
    @password = new_password if validate_password(new_password)
  end
  # PRIVATE METHOD
  # can't be call outside the method

  private

  attr_writer :apps

  def generate_production_number
    start_digits = rand(10_000..99_999)
    end_digits = rand(10_000..99_999)
    alphabet = ('A'..'Z').to_a
    middle_digits = '2020'
    5.times { middle_digits << alphabet.sample }
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end

  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
  end
end

phone = Gadget.new('rubyfan123', 'programming123')

phone.password = 'computer123'

# puts phone.password

# Prefer insrance Methods to instance Variable
class BankAccount
  def initialize
    @amount = 5000
  end

  def status
    "your bank account has a total of #{amount} dollars"
  end

  private

  def amount
    @amount / 100
  end
end

ba = BankAccount.new
p ba.status

# monkey patching

class Hash
  def identify_duplicate_values
    values = []
    dupes = []
    each_value do |value|
      values.include?(value) ? dupes << value : values << value
    end
    dupes.uniq
  end
end

scores = { a: 100, b: 100, c: 83, d: 55, e: 17,
           f: 5, g: 100, i: 50, h: 83 }

p scores.identify_duplicate_values

# class variable and class methods
class Bicycle
  @maker = 'BikeTech'
  @count = 0
  def self.description
    'Hi this is the bicyle blueprint of the class'
  end

  attr_reader :count

  attr_reader :maker

  def initialize
    @count += 1
  end
end

p Bicycle.maker
p Bicycle.count
