# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(firstname: "Tadea", lastname: "Simunovic", name: "tadSim", password: "password")
beach = Beach.create(name: "Zlatni Rat", location: "Island of Bol", beach_type: "sandy", summary: "Lorem Ipsum Lorem Ipsum")
fav_beach = FavBeach.create(user_id: user.id, beach_id: beach.id)