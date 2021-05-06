# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

actor = Actor.new(({first_name: "Mark", last_name: "Whalberg", known_for: "Shooter"}))
actor.save

actor = Actor.new(({first_name: "Gemma", last_name: "Arterton", known_for: "Prince of Persia"}))
actor.save

actor = Actor.new(({first_name: "Harrison", last_name: "Ford", known_for: "Indianna Jones"}))
actor.save

actor = Actor.new(({first_name: "Tilde", last_name: "Swinton", known_for: "Dr. Strange"}))
actor.save