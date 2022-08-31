# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
u1 = User.create({ username: "mike", password_digest: 12345, email: "mike@email.com", phone: 4805235223, address: 'somewhere in arizona', admin: true, winner: false})
u2 = User.create({ username: "andrew", password_digest: 12345, email: "andrew@email.com", phone: 4805235233, address: 'somewhere in arizona', admin: true, winner: false})

a1 = Artist.create({bio: 'hi this is tyler blah blah', img_url: 'https://cdn.shopify.com/s/files/1/0592/3805/6116/files/224734689_217964046902308_5964761781421374312_n_540x.jpg?v=1629837942', instagram: 'https://www.instagram.com/tylernolantattoos/'})
a2 = Artist.create({bio: 'hi this is ryan blah blah', img_url: 'https://assets.bigcartel.com/product_images/259725686/Ryan+Bare.jpg?auto=format&fit=max&w=1200', instagram: 'https://www.instagram.com/ryanashleymalarkey/'})
a3 = Artist.create({bio: 'hi this is luke blah blah', img_url: 'https://cdn.shopify.com/s/files/1/1109/4574/products/image_d601e1de-6bc7-46fd-aa7d-7743c6075b88_grande.jpg?v=1629821698', instagram: 'https://www.instagram.com/lukewessman/'})

