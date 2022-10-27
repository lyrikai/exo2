# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
Country.destroy_all


10.times do 

    coun = Country.create!(country: Faker::Address.city )

end


start_country = Country.first.id



10.times do 
    country = rand(0..9)
    total = country + start_country
    cool = Country.find(total)
    

    dogsit = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, country: cool)

end


30.times do 
    country = rand(0..9)
    total = country + start_country
    cool = Country.find(total)

    dog = Dog.create!(name: Faker::Creature::Dog.name, race: Faker::Creature::Dog.breed, country: cool)

end

ok = Dogsitter.first.id
ok2 = Dog.first.id

50.times do 

    country = rand(0..9)
    total = country + start_country
    cool = Country.find(total)


    dogs = rand(0..9)
    dog = rand(0..29)

    docnb = ok + dogs
    test = Dogsitter.find(docnb)

    patnb = ok2 + dog
    test2 = Dog.find(patnb)

    ap = Stroll.create!(dogsitter: test, dog: test2, country: cool)

end
