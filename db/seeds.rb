# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    game = Game.create!(local: "Manchester UTD", visit: "Chelsea", stadium: "Old trafford", date: "16/02 - 9:00pm" )
    game1 = Game.create!(local: "Barcelona", visit: "Real Madrid", stadium: "Camp nou", date: "16/02 - 9:00pm" )
    game2 = Game.create!(local: "Milan", visit: "Roma", stadium: "San Siro", date: "16/02 - 9:00pm" )
