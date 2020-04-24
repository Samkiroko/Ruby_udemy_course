class Gadget
  attr_reader :production_number
  attr_writer :password
  attr_accessor :username

  def initialize(_username, _password)
    @username = "User #{rand(1..100)}"
    @password = 'topsecret'
    @production_number = "#{('a'..'z').to_a.sample}-#{rand(1..99)}"
  end

  def to_s
    "Gadget #{@production_number} has the #{@username} its #{self.class} it has id #{object_id}"
  end
end

g1 = Gadget.new('rubyw', 'pass')
g2 = Gadget.new('rubyyeah', 'wass')
