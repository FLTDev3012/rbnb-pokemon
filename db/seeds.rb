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


user1 = User.create(email: "dorian@gmail.com", password: "123456")

p "------ #{User.count} user created ----------"

pokemon1 = Pokemon.create(name: "Pikachu", user_id: user1.id)


p "------ #{Pokemon.count} pokemon created ----------"
