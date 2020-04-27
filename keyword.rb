class Employee
  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age}years old"
  end
end

class Manager < Employee
  attr_reader :rank
  def initialize(name, age, rank)
    super(name, age)
    @rank = rank
  end

  def yell
    "Who's the boss? I'm the boss"
  end

  def introduce
    result = super
    result + "My name is #{name} and I'm a manager! Woo-hoo!"
  end
end

sally = Manager.new('sally', 42, 'senior vice president')
p sally.rank
p sally.name
p sally.age
p sally.introduce

sam = Employee.new('sammy', 45)
p sam.name
p sam.age
p sam.introduce
