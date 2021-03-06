#!/usr/bin/env ruby

require './trick_or_treat'

########################################################################
# Define the tests!
########################################################################
def assert(condition, reason)
  return if condition

  puts "**FAILED** #{reason}"
end


def test_house_only_dispenses_to_appropriate_kids
  makersquare = House.new("716 Congress", 100)
  jason = TrickOrTreater.new("Jason", 38)
  rose = TrickOrTreater.new("Rose", 2)
  
  jason.knock(makersquare)
  rose.knock(makersquare)

  assert(jason.candies_in_bag == 0, "#{jason.name} got candy, but should not have")
  assert(rose.candies_in_bag == 1, "#{rose.name} should have gotten a candy")

end

def test_house_with_old_trickortreaters
  makersquare = House.new("716 Congress", 100)
  kid = TrickOrTreater.new("Jason", 38)

end

def test_house_with_aliens_of_nil_age
  home = House.new("Home", 100)
  alien = TrickOrTreater.new("Creature from Snargleplexon")

  assert(alien.candies_in_bag == 0, "#{alien.name} should not get candy")
end


########################################################################
# Call the tests!
########################################################################

puts " "

assert(1==1, "1 is supposed to equal 1")
assert(1 != 2, "1 should not equal 2")


test_house_only_dispenses_to_appropriate_kids
test_house_with_old_trickortreaters
# test_house_with_aliens_of_nil_age


