# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
Gif.destroy_all
User.destroy_all

tyra = Gif.create(title: "tyra", url: "https://media.giphy.com/media/OpMAJdvTvXQYM/giphy.gif")
mark = User.create(name: "mark")
review1 = Review.create(rating: 5, content: "What a relatable gif! Exactly what I feel like when I'm programming.", gif_id: tyra.id, user_id: mark.id)

trash = Gif.create(title: "trash", url: "https://66.media.tumblr.com/28698d657cc1c5563ca77c1f17287905/tumblr_pfkug1t59y1w2im81_250.gif")
helen = User.create(name: "helen")
review2 = Review.create(rating: 4, content: "How meta. Really makes you think.", gif_id: trash.id, user_id: helen.id)

rage = Gif.create(title: "rage", url:"https://media2.giphy.com/media/amUVFzg1wNZKg/giphy.gif")
review3 = Review.create(rating: 2, content: "Could use more character development. Why is he so angry?", gif_id: rage.id, user_id: mark.id)
review4 = Review.create(rating: 5, content: "A fascinating meditation on the human condition.", gif_id: rage.id, user_id: helen.id)

judy = Gif.create(title: "judy", url:"https://media.giphy.com/media/7yDthHaq2haXS/giphy.gif")
