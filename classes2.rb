class Gadget
  attr_reader :production_number
  # attr_writer :password
  attr_accessor :username, :password

  def initialize(_username, _password)
    @username = "User #{rand(1..100)}"
    @password = 'password'
    @production_number = generate_production_number
  end

  def to_s
    "Gadget #{@production_number} has the #{@username} its #{self.class}
    it has id #{object_id}."
  end

  def password=(new_password)
    @password = new_password if validate_password(new_password)
  end
  # PRIVATE METHOD
  # can't be call outside the method

  private

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
p phone.password

class Car
  def initialize(age, miles)
    base_value = 2000
    age_deduction = age * 1000
    miles_deduction = (miles / 10.to_f)
    @value = base_value - age_deduction - miles_deduction
  end

  def compare_car_with(car)
    value > car.value ? 'your car is better!' : 'your car is worse'
  end

  protected

  attr_reader :value
end

civic = Car.new(3, 30_000)
fiat = Car.new(1, 20_000)

p civic.compare_car_with(fiat)
p fiat.compare_car_with(civic)

# add validation to Setter Methods
