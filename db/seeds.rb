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

tyra = Gif.create(title: "Tyra", url: "./images/tyra.gif")
infinite_loop = Gif.create(title: "Infinite Loop", url: "./images/infinite_loop.png")
techno_geeks = Gif.create(title: "Techno Geeks", url: "./images/techno_geeks.gif")
rage = Gif.create(title: "Rage", url: "./images/rage.gif")
judy = Gif.create(title: "Judge Judy", url: "./images/judy.gif")
my_computer = Gif.create(title: "My Computer", url: "./images/my_computer.gif")
bunny = Gif.create(title: "Bunny", url: "./images/bunny.gif")

darryl = User.create(name: "Darryl")
janet = User.create(name: "Janet")

review1 = Review.create(rating: 5, content: "What a relatable GIF! Exactly what I feel like when I'm programming.", gif_id: tyra.id, user_id: darryl.id)
review2 = Review.create(rating: 4, content: "How meta. Really makes you think.", gif_id: my_computer.id, user_id: janet.id)
review3 = Review.create(rating: 3, content: "Could use more character development. Why is he so angry?", gif_id: rage.id, user_id: darryl.id)
review4 = Review.create(rating: 5, content: "A fascinating meditation on the human condition.", gif_id: rage.id, user_id: janet.id)
review5 = Review.create(rating: 4, content: "A disquieting play on the notion of deductive structure vis-à-vis the GIF frame. Pushes the boundaries of the medium in new and exciting ways.", gif_id: infinite_loop.id, user_id: janet.id)
review6 = Review.create(rating: 1, content: "Hey, some people like spreadsheets! :(", gif_id: techno_geeks.id, user_id: darryl.id)
review7 = Review.create(rating: 3, content: "The narrative takes a while to build up, but the shocking denouement is worth the wait.", gif_id: bunny.id, user_id: janet.id)
review8 = Review.create(rating: 2, content: "A bit repetitive.", gif_id: bunny.id, user_id: darryl.id)
