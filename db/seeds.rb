# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
p "------  user destroy ----------"

Pokemon.destroy_all

p "------  pokemon destroy ----------"

user1 = User.create(email: "dorian@gmail.com", password: "coucou")
user2 = User.create(email: "dorian2@gmail.com", password: "coucou")


p "------ #{User.count} user created ----------"

pokemon1 = Pokemon.create(name: "Pikachu", user_id: user1.id)


pokemon2 = Pokemon.create(name: "Salameche", user_id: user1.id)
pokemon3 = Pokemon.create(name: "Bulbizarre", user_id: user1.id)
pokemon4 = Pokemon.create(name: "Carapuce", user_id: user2.id)

require "open-uri"

file = URI.open("https://www.pokepedia.fr/images/d/d1/Pikachu_de_Sacha.png?20191229224252")
pokemon5 = Pokemon.create(name: "raitchu", user_id: user1.id)
pokemon5.photo.attach(io: file, filename: "pikachu.png", content_type: "image/png")
pokemon5.save



p "------ #{Pokemon.count} pokemon created ----------"
