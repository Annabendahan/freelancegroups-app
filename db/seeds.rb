# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




teams = Team.create(
  [
    {
      title: "Team Paris IV",
      description: "Fullstack team sur Rails, JS , react, et aussi des designers",
      capacity: 9,
      location: "2 rue Legendre Paris IV",
      user_id: 1
      },
      {
      title: "Groupe Paris 8",
      description: "Backend team sur Rails, SQL ..",
      capacity: 7,
      location: "4 rue saint Maur Paris 7",
      user_id: 1
      }
      ])
