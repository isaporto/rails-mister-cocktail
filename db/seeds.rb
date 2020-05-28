# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'json'
require 'open-uri'
ingredients = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)
ingredients["drinks"].each do |ingredient|
  puts "Saving a new ingredient"
  Ingredient.new(name: ingredient.values.first).save!
  puts "Saved"
end
