puts "🌱 Seeding data..."

puts "Deleting all data"
Artist.destroy_all
User.destroy_all
Giveaway.destroy_all

puts "creating Users..."
u1 = User.create({ username: "mike", password: '12345', email: "mike@email.com", phone: 4805235223, address: 'somewhere in arizona', admin: true, winner: false})
u2 = User.create({ username: "andrew", password: '12345', email: "andrew@email.com", phone: 4805235234, address: 'somewhere in arizona', admin: true, winner: false})
u3 = User.create({ username: "joe", password: '12345', email: "joe@email.com", phone: 4805235225, address: 'somewhere not in arizona', admin: false, winner: false})
u4 = User.create({ username: "john", password: '12345', email: "john@email.com", phone: 4805235226, address: 'somewhere not in arizona', admin: false, winner: false})

puts "Creating Artists..."
a1 = Artist.create({name: 'Tyler', bio: 'hi this is tyler blah blah', img_url: 'https://cdn.shopify.com/s/files/1/0592/3805/6116/files/224734689_217964046902308_5964761781421374312_n_540x.jpg?v=1629837942', instagram: 'https://www.instagram.com/tylernolantattoos/'})
a2 = Artist.create({name: 'Ryan', bio: 'hi this is ryan blah blah', img_url: 'https://assets.bigcartel.com/product_images/259725686/Ryan+Bare.jpg?auto=format&fit=max&w=1200', instagram: 'https://www.instagram.com/ryanashleymalarkey/'})
a3 = Artist.create({name: 'Luke', bio: 'hi this is luke blah blah', img_url: 'https://cdn.shopify.com/s/files/1/1109/4574/products/image_d601e1de-6bc7-46fd-aa7d-7743c6075b88_grande.jpg?v=1629821698', instagram: 'https://www.instagram.com/lukewessman/'})

puts "Creating Giveaways..."
g1 = Giveaway.create({header: 'Tyler 4 hour session', description: 'Enter to get this phonominal experience of a 4 hour session with this artist!', closing_date: Date.new(2023,1,31), img_url: 'https://cdn.shopify.com/s/files/1/0592/3805/6116/files/224734689_217964046902308_5964761781421374312_n_540x.jpg?v=1629837942', full_details: 'here are the complete details for this event', artist_id: a1.id })
g2 = Giveaway.create({header: 'Tyler 8 hour session', description: 'Enter to get this phonominal experience of a 8 hour session with this artist!', closing_date: Date.new(2023,1,31), img_url: 'https://cdn.shopify.com/s/files/1/0592/3805/6116/files/224734689_217964046902308_5964761781421374312_n_540x.jpg?v=1629837942', full_details: 'here are the complete details for this event', artist_id: a1.id })
g3 = Giveaway.create({header: 'Ryan 4 hour session', description: 'Enter to get this phonominal experience of a 4 hour session with this artist!', closing_date: Date.new(2023,1,31), img_url: 'https://assets.bigcartel.com/product_images/259725686/Ryan+Bare.jpg?auto=format&fit=max&w=1200', full_details: 'here are the complete details for this event', artist_id: a1.id })
g4 = Giveaway.create({header: 'Ryan 8 hour session', description: 'Enter to get this phonominal experience of a 8 hour session with this artist!', closing_date: Date.new(2023,1,31), img_url: 'https://assets.bigcartel.com/product_images/259725686/Ryan+Bare.jpg?auto=format&fit=max&w=1200', full_details: 'here are the complete details for this event', artist_id: a1.id })
g5 = Giveaway.create({header: 'Luke 4 hour session', description: 'Enter to get this phonominal experience of a 4 hour session with this artist!', closing_date: Date.new(2023,1,31), img_url: 'https://cdn.shopify.com/s/files/1/1109/4574/products/image_d601e1de-6bc7-46fd-aa7d-7743c6075b88_grande.jpg?v=1629821698', full_details: 'here are the complete details for this event', artist_id: a1.id })
g6 = Giveaway.create({header: 'Luke 8 hour session', description: 'Enter to get this phonominal experience of a 8 hour session with this artist!', closing_date: Date.new(2023,1,31), img_url: 'https://cdn.shopify.com/s/files/1/1109/4574/products/image_d601e1de-6bc7-46fd-aa7d-7743c6075b88_grande.jpg?v=1629821698', artist_id: a1.id })

puts "✅ Done seeding!"