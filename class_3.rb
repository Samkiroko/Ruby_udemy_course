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
  def yell
    "Who's the boss? I'm the boss"
  end

  def introduce
    'Who is the boss'
  end
end

class Worker < Employee
  def clock_in(time)
    "Start my shift at #{time}"
  end
end

sam = Manager.new('Kiroko', 48)
dam = Manager.new('Daniel', 38)
samu = Worker.new('Daniel', 38)

p sam.introduce
p dam.introduce

# check inheritance hierarchy
p samu.clock_in('8:30 AM')

# Hash as initialize Argument II
class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, details = {})
    @name = name
    @age = details[:age]
    @occupation = details[:occupation]
    @hobby = details[:hobby]
    @birthplace = details[:birthplace]
  end
end

info = { age: 53, occupation: 'Banker', hobby: 'pool table', birthplace: 'kenya' }
senator = Candidate.new('Mr. Smith', info)

p senator.age
p senator.occupation
p senator.hobby
p senator.birthplace
