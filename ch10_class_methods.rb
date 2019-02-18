puts "--String class example--"

class String
  def shoutify
    self.upcase + "!"
  end
end

puts "hi matt".shoutify

# -------
puts "--Robot class--"

class Robot
  def initialize(number_of_legs)
    @number_of_legs = number_of_legs
  end

  def add_leg
    @number_of_legs += 1
  end

  def walk
    return "I'm walking on my " + @number_of_legs.to_s + " legs!"
  end
end

robot = Robot.new(4)

robot.add_leg
robot.add_leg

puts robot.walk

# -------
puts "--Person class--"

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hello, I'm " + @name + ", and I'm " + @age.to_s + " years old."
  end

  def get_older
    @age += 1
  end
end

peter = Person.new("Peter", 37)
peter.get_older

peter.introduce