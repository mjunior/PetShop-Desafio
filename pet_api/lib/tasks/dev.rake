require 'open-uri'
namespace :dev do
  desc "Adiciona 1000 cachorros aleatorios a base de dados."
  task create_dogs: :environment do
    puts "Extraindo raças de: "
    puts "    http://www.portalfilhotes.com.br/racas-de-a-z/"
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
  end

end
