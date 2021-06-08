# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all
Favorite.destroy_all

hypercars = Favorite.create(name: "hypercars")
supercars = Favorite.create(name: "supercars")
regularcars = Favorite.create(name: "regularcars")

Car.create(name: "nissan gtr", favorite: supercars)

Car.create(name: "toyota", favorite: regularcars)

Car.create(name: "mercedes c300", favorite: regularcars)

