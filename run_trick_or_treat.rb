#!/usr/bin/env ruby

require './trick_or_treat'


def print_candy_counts(kids)
  puts "----"
  kids.each do |kid|
    puts "#{kid.name} has #{kid.candies_in_bag} candies."
  end
end

def run_demo
  houses = [
    House.new("Home", 100),
    House.new("Cheap Neighbors", 10),
    House.new("Show-off Neighbors", 500),
    House.new("Weirdos Down the Street", 0),
  ]

  kids = [
    TrickOrTreater.new("Billy", 12),
    TrickOrTreater.new("Marina", 8),
    TrickOrTreater.new("Dr. Horseface", 73),
    TrickOrTreater.new("Little Timmy", 5),
    TrickOrTreater.new("Cher", 5),
  ]
  puts "----"
  puts "There are #{kids.count} costumed people trick-or-treating."
  puts "There are #{houses.count} houses."

  print_candy_counts(kids)

  kids.each do |kid|
    houses.each do |house|
      kid.knock(house)
    end
  end

  puts "\nAfter all the kids knock on all the doors..."

  print_candy_counts(kids)
end


run_demo

