# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all
Favorite.destroy_all

hypercars = Favorite.create(name: "Hyper Car")
supercars = Favorite.create(name: "Super Car")
regularcars = Favorite.create(name: "Regular Car")

Car.create(name: "Nissan GTR", favorite: supercars)
Car.create(name: "Ariel Atom", favorite: hypercars)
Car.create(name: "Toyota Camry", favorite: regularcars)
Car.create(name: "Honda Civic", favorite: regularcars)
Car.create(name: "Mercedes C300", favorite: regularcars)

Car.create(name: "Nissan Leaf", favorite: regularcars)
Car.create(name: "Bugatti Veyron", favorite: hypercars)
Car.create(name: "Hyundai Tucson", favorite: regularcars)
Car.create(name: "Toyota Rav4", favorite: regularcars)
Car.create(name: "Lotus Exige", favorite: supercars)
Car.create(name: "Mclaren P1", favorite: hypercars)
Car.create(name: "Porsche 911 GT3RS", favorite: hypercars)
Car.create(name: "Sercedes SLS Amg", favorite: supercars)


