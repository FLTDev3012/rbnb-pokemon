# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

User.destroy_all
p "------  user destroy ----------"

Pokemon.destroy_all

p "------  pokemon destroy ----------"

user1 = User.create(email: "dorian@gmail.com", password: "coucou")
user2 = User.create(email: "dorian2@gmail.com", password: "coucou")


p "------ #{User.count} user created ----------"

file = URI.open("https://www.pokepedia.fr/images/d/d1/Pikachu_de_Sacha.png?20191229224252")
pokemon1 = Pokemon.create(name: "pikachu", user_id: user1.id, pokemon_type: "electrique", description: "Pikachu blalbalbal", price: "50", level: "23")
pokemon1.photo.attach(io: file, filename: "pikachu.png", content_type: "image/png")
pokemon1.save

file = URI.open("https://thumbor.sd-cdn.fr/XS5pGN5wl4nOQAOY3TK0wkvSECY=/940x550/cdn.sd-cdn.fr/comiga/2019/12/salameche-pokemon-origine.jpg")
pokemon2 = Pokemon.create(name: "Salameche", user_id: user1.id, pokemon_type: "feu", description: "Salameche blablabla", price: "65", level: "27")
pokemon2.photo.attach(io: file, filename: "salameche.png", content_type: "image/png")
pokemon2.save

file = URI.open("https://www.pokepedia.fr/images/thumb/0/09/Bulbizarre_de_Sacha.png/1200px-Bulbizarre_de_Sacha.png")
pokemon3 = Pokemon.create(name: "Bulbizarre", user_id: user2.id, pokemon_type: "plante", description: "bulbiblablablabl", price: "30", level: "32")
pokemon3.photo.attach(io: file, filename: "bulbizarre.png", content_type: "image/png")
pokemon3.save

file = URI.open("https://www.breakflip.com/uploads2/Misty/2021/Pok%C3%A9mon%20GO/carapuce-vedette-shiny-pokemon-go.jpg")
pokemon4 = Pokemon.create(name: "Carapuce", user_id: user2.id, pokemon_type: "eau", description: "carablabla", price: "56", level: "31")
pokemon4.photo.attach(io: file, filename: "carapuce.png", content_type: "image/png")
pokemon4.save



p "------ #{Pokemon.count} pokemon created ----------"
