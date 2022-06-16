# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Animal.destroy_all
Refuge.destroy_all

refuge1 = Refuge.create(name: "SPA Marseille", email: "spamarseille@gmail.com", password: "aaaaaa", address: "1 chemin de la liberté", postcode: "13001", city: "Marseille")
refuge2 = Refuge.create(name: "SPA BBA", email: "spabba@gmail.com", password: "aaaaaa", address: "109 rue pytheas", postcode: "13320", city: "Bouc Bel Air")
refuge3 = Refuge.create(name: "SPA Aix", email: "spaaix@gmail.com", password: "aaaaaa", address: "3 cours mirabeau", postcode: "13100", city: "Aix-en-Provence")
refuge4 = Refuge.create(name: "SPA Mars", email: "spamars@gmail.com", password: "aaaaaa", address: "8 chemin de la liberté", postcode: "13008", city: "Marseille")
refuge5 = Refuge.create(name: "SPA", email: "spa@gmail.com", password: "aaaaaa", address: "20 chemin de la liberté", postcode: "13004", city: "Marseille")

animal1 = Animal.create(name: "cesar", species: "dog", age: 2, description: "Cesar est un loulou de 2 ans en attente de son prochain nid douillet ! Venez le rencontrer !", refuge: refuge1)
animal2 = Animal.create(name: "max", species: "cat", age: 5, description: "Max est un matou de 5 ans en attente de son prochain nid douillet ! Venez le rencontrer !", refuge: refuge2)
animal3 = Animal.create(name: "becky", species: "cat", age: 4, description: "Becky est une minette de 4 ans en attente de son prochain nid douillet ! Venez le rencontrer !", refuge: refuge3)
animal4 = Animal.create(name: "mimi", species: "dog", age: 4, description: "Mimi est un louloute de 4 ans en attente de son prochain nid douillet ! Venez le rencontrer !", refuge: refuge4)
animal5 = Animal.create(name: "rex", species: "dog", age: 2, description: "Rex est un loulou de 2 ans en attente de son prochain nid douillet ! Venez le rencontrer !", refuge: refuge5)
