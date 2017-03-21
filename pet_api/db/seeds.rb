require 'open-uri'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Extraindo raças"
puts "  - http://www.portalfilhotes.com.br/racas-de-a-z/"
html = Nokogiri::HTML(open("http://www.portalfilhotes.com.br/racas-de-a-z/"))
breeds = Array.new

html.css("#HOTWordsTxt > ul > li").each do |item|
  breeds.push item.text 
end

puts "Extraindo raças [OK]"
puts "############################"
puts "Criando registros"
(1..1000).each do ||
  Dog.create(
    name: Faker::Cat.name,
    owner: Faker::Name.name,
    castrated: [true,false].sample,
    genre: ["Macho","Fêmea"].sample,
    breed: breeds.sample,
    phone: Faker::Base.numerify('(##) ####-####'),
    last_time: Faker::Date.backward([2,3,5,10,15,20,25].sample),
    birthday: Faker::Date.birthday(0, 15)
  )
end
puts "Criando registros [OK]"
