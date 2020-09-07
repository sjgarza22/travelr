# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'friend1@gmail.com', username: 'friend_1', password: 'password123')
User.create(email: 'friend2@gmail.com', username: 'friend_2', password: 'password123')
User.create(email: 'friend3@gmail.com', username: 'friend_3', password: 'password123')