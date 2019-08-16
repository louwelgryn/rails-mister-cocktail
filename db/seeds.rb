# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

puts 'starting!'

url= "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
doc = open(url).read
parsing = JSON.parse(doc)
drinks = parsing["drinks"]

cocktails =[]
cocktail_names =drinks.each do |drink|
  cocktails << drink['strIngredient1']
end


cocktails.each do |ingredient|
 cocktail = Ingredient.new(name: ingredient)
 cocktail.save
end

puts 'finished!'
