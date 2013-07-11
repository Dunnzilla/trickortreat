#!/usr/bin/env ruby

require './trick_or_treat'

home = House.new("Home", 12)
jason = TrickOrTreater.new("Jason", 38)
rose = TrickOrTreater.new("Rose", 2)

puts "Before knocking:\n"
puts jason
puts rose
puts home


jason.knock(home)
rose.knock(home)


puts "\nAfter knocking:\n"
puts jason
puts rose
puts home
