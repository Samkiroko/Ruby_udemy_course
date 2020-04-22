today = Time.new
p today.class
p today

p Time.new(2020, 5, 18, 11, 30, 46)

p today.month
p today.day
p today.year

puts

p today.hour
p today.min
p today.sec

puts

p today.yday
p today.wday

# predicate methods on time objects
birthday = Time.new(1989, 5, 18)
p birthday.monday?
p birthday.tuesday?
p birthday.wednesday?
p birthday.thursday?
p birthday.friday?
p birthday.saturday?
p birthday.sunday?

p birthday.dst?

# Add or substract Time by seconds

start_of_year = Time.new(2016, 1, 1)

p start_of_year
p start_of_year + 60
p start_of_year - 180
p start_of_year + (60 * 60 * 24)

# finding the day of the year by number
def find_day_of_year_by_number(number)
  current_date = Time.new(2020, 1, 1)
  one_day = 60 * 60 * 24
  current_date += one_day until current_date.yday == number
  current_date
end

p find_day_of_year_by_number(111)
p find_day_of_year_by_number(122)
p find_day_of_year_by_number(309)
p find_day_of_year_by_number(139)

# my_bd = Time.new(2020, 5, 18)

# p my_bd.yday

# The comparable method on atime
birthday = Time.new(2016, 4, 12)
summer = Time.new(2016, 6, 21)
independence_day = Time.new(2016, 7, 4)
winter = Time.new(2016, 12, 21)

puts independence_day.between?(birthday, winter)
puts independence_day.between?(birthday, summer)

puts birthday < summer

# convert time object to other objects
someday = Time.new(2000, 2, 15)

puts someday.to_s
puts someday.ctime
p someday.to_a

# converting time object to formatted string
today = Time.now
p today
p today.strftime('%B %d, %Y')

# The .pharse and .strptime methods
require 'time'

puts Time.parse('2020-01-12')
puts Time.strptime('03-04-2020', '%B %d, %Y')
