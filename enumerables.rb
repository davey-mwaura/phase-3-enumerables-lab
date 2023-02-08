require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end


#1
# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  names = spicy_foods.map { |spicy_food| spicy_food[:name] }
  puts names
end
get_names(spicy_foods) #test in terminal



#2
# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  spicey = spicy_foods.select { |spicy_food| spicy_food[:heat_level] > 5 }
  puts spicey
end
spiciest_foods(spicy_foods) #test in terminal


#3
# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  spicy_foods.each do |spicy_food|
    heat_emoji = "🌶" * spicy_food[:heat_level]
    puts "#{spicy_food[:name]} (#{spicy_food[:cuisine]}) | Heat Level: #{heat_emoji}"
  end
end
print_spicy_foods(spicy_foods) #test in terminal



#4
# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  foundfood = spicy_foods.find { |spicy_food| spicy_food[:cuisine] == cuisine }
  puts foundfood
end
get_spicy_food_by_cuisine(spicy_foods, 'Sichuan') #test in terminal




#5
# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  sortout = spicy_foods.sort_by { |spicy_food| spicy_food[:heat_level] }
  puts sortout
end
sort_by_heat(spicy_foods) #test in terminal



#6
# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)

  spicey = spicy_foods.select { |spicy_food| spicy_food[:heat_level] > 5 }

  spicey.each do |spicy_food|
    heat_emoji = "🌶" * spicy_food[:heat_level]
    puts "#{spicy_food[:name]} (#{spicy_food[:cuisine]}) | Heat Level: #{heat_emoji}"
  end
end
print_spiciest_foods(spicy_foods) #test in terminal


#6
# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  total_heat_level = spicy_foods.sum { |spicy_food| spicy_food[:heat_level] }
  (total_heat_level / spicy_foods.count).round
  puts "Average heat is #{total_heat_level}."
end
average_heat_level(spicy_foods) #test in terminal