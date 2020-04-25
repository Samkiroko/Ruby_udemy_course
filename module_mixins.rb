# what is a module?
# A module is toolbox or container of methods and constants
# module methods and constants can be used as needed
# modules creates namespaces for methods with the same name
# modules connot be used to creat instances
# modules can be mixis into classes to add behavior

module LengthConversions
  WEBSITE = 'www.kiroko.tech'.freeze
  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_feet(miles)
    inches * 2.54
  end
end

# get where i got the info
puts LengthConversions::WEBSITE
puts LengthConversions.miles_to_feet(100)
puts LengthConversions.miles_to_feet(100)
puts LengthConversions.miles_to_centimeters(100)

# modules with identical methods
module Square
  def self.area(side)
    side * side
  end
end
module Rectangle
  def self.area(length, width)
    length * width
  end
end

module Circle
  PI = 3.14159
  def self.area(radius)
    PI * radius * radius
  end
end

puts Square.area(34)
puts Rectangle.area(45, 67)
puts Circle.area(67)

# the MATH module
puts Math::PI
puts Math.sqrt(25)
puts Math.sin(90)

# Mixins I - The Comparable Module

class OlympicMedal
  # <, <=, >=, <=>, between?
  include Comparable

  MEDAL_VALUES = { 'Gold' => 3, 'Silver' => 2, 'Bronze' => 1 }.freeze

  attr_reader :type

  def initialize(type, weight)
    @type = type
    @weight = weight
  end

  def <=>(other)
    if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]
      -1
    elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
      0
    else
      1
    end
  end
end

bronze = OlympicMedal.new('Bronze', 5)
silver = OlympicMedal.new('Silver', 10)
gold = OlympicMedal.new('Gold', 3)

puts bronze == gold
puts silver < gold
puts bronze > silver
puts silver.between?(bronze, gold)

# Mixins II - Custom Mixins
# what is amixin?
# A mixin is amodule that inject additional behavior into a class
# Mixins allows us to mimic inheritance from more than one class
# Aclass that includes a modules a module has access to its methods and constants
# Constant and method mixed into a class do not need to be prefixed with the module name

module Purchaseable
  def purchase(item)
    "#{item} has been purchased "
  end
end

class Bookstore
  include Purchaseable
end

class Supermarket
  include Purchaseable
end

class CornerMart < Supermarket
end

barnes_and_noble = Bookstore.new
p barnes_and_noble.purchase('Atlas Shrugged')

shoprite = Supermarket.new
p shoprite.purchase('Ice cream')

quickstop = CornerMart.new
p quickstop.purchase('slim jim')

# the extend and mixins
module Announcer
  def who_am_i
    "The name of this class is #{self}"
  end
end

class Cat
  extend Announcer
end
class Dog
  extend Announcer
end

p Dog.who_am_i
p Cat.who_am_i

# Mixins III - The Enumerable Module
class ConvenientStore
  include Enumerable
  attr_reader :snacks
  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  def each
    snacks.each do |snack|
      yield snack
    end
  end
end

bodega = ConvenientStore.new
bodega.add_snack('Doritos')
bodega.add_snack('Jolly Ranchers')
bodega.add_snack('Slim jims')

p bodega.snacks
