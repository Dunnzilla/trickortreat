#!?usr/bin/env ruby


# -----------------------------------------------
class TrickOrTreater
  attr_accessor :name, :age, :candies_in_bag

  def initialize(name, age=nil)
    @name = name
    @age = age
    @candies_in_bag = 0
  end

  def put_candies_in_bag(number_of_candies)
    self.candies_in_bag += number_of_candies
  end

  def knock(house)
    for_me = self # <--  Just to make this next expression more fun to read:

    if house.answers_door(for_me) && house.believes_age(for_me)
      candies_dispensed = house.gimme_some_candies
      self.put_candies_in_bag( candies_dispensed )
    end
  end

  def to_s
    "#{self.name}, #{self.age} years old, #{self.candies_in_bag} candies in bag"
  end

  def random_age
    5 + rand(10)
  end

end

# -----------------------------------------------
class House
  attr_accessor :name, :candies_left
  def initialize(name, starting_candy=0)
    @name = name
    @candies_left = starting_candy
  end

  def answers_door(trick_or_treater)
    return false if self.candies_left == 0
    return true
  end

  def gimme_some_candies
    candies_to_dispense = 1
    self.candies_left = self.candies_left - candies_to_dispense
    return candies_to_dispense
  end

  def to_s
    "House #{self.name}, #{self.candies_left} candies remaining."
  end

  def believes_age(trick_or_treater)
    return true if trick_or_treater.age > 0
    return false
  end

end


