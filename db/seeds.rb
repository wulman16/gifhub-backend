# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Gif.destroy_all
User.destroy_all
Review.destroy_all

gif1 = Gif.create(title: "test", url: "https://media.giphy.com/media/l3q2yYNt8DXoyKRdm/giphy.gif")
user1 = User.create(name: "spike")
review1 = Review.create(rating: 5, content: "This gif was amazing!", gif_id: gif1.id, user_id: user1.id)