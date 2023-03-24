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

file = URI.open("https://static.hitek.fr/img/actualite/2018/06/04/fb_marcel-snorlax-rest.png")
pokemon5 = Pokemon.create(name: "ronflex", user_id: user2.id, pokemon_type: "normal", description: "ronflexblalbalbal", price: "500", level: "69")
pokemon5.photo.attach(io: file, filename: "ronflex.png", content_type: "image/png")
pokemon5.save

file = URI.open("https://www.pokepedia.fr/images/9/98/Dracaufeu_d%27Alain.png")
pokemon6 = Pokemon.create(name: "Dracaufeu", user_id: user1.id, pokemon_type: "feu", description: "Dracaufeublablabla", price: "1050", level: "107")
pokemon6.photo.attach(io: file, filename: "dracaufeu.png", content_type: "image/png")
pokemon6.save

file = URI.open("https://www.pokepedia.fr/images/thumb/3/38/%C3%89voli_de_Chlo%C3%A9.png/300px-%C3%89voli_de_Chlo%C3%A9.png")
pokemon7 = Pokemon.create(name: "Evoli", user_id: user2.id, pokemon_type: "normal", description: "evoliiiidfsdf", price: "30", level: "32")
pokemon7.photo.attach(io: file, filename: "bulbizarre.png", content_type: "image/png")
pokemon7.save

file = URI.open("https://static1.millenium.org/articles/6/33/30/96/@/1006236-grotte-insecateur-amp_main_media_schema-1.jpg")
pokemon8 = Pokemon.create(name: "Insecateur", user_id: user1.id, pokemon_type: "plante", description: "insecateurrrrrr", price: "70", level: "56")
pokemon8.photo.attach(io: file, filename: "insecateur.png", content_type: "image/png")
pokemon8.save



p "------ #{Pokemon.count} pokemon created ----------"
