# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "Starting"

 20.times do 
    Product.create(name: Faker::Name.unique.first_name) do |product|
        product.description = Faker::Lorem.sentence
        product.stone = Faker::Lorem.word
        product.inStock = Faker::Number.between(from: 1, to: 9)
        product.type = Faker::Lorem.word
        product.user_id = 1
    end

    Blog.create(title: Faker::Lorem.word) do |blog|
        blog.content = Faker::Lorem.paragraphs(number: 2)
        blog.user_id = 1
    end
 end

 puts "Done seeding"

