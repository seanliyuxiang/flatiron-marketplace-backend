User.destroy_all
Item.destroy_all
Review.destroy_all

puts "🌱 Seeding data..."

# Seed your database here

# users
puts "🌱 Seeding users..."
abby = User.create(username: "Abby", location: "Denver")
gabriel = User.create(username: "Scooty", location: "Austin")
sean = User.create(username: "Sean", location: "Houston")

# items
puts "🌱 Seeding items..."
chair = Item.create(name: "chair", description: "a blue chair", image_url: "https://media.istockphoto.com/photos/the-modern-blue-armchair-isolated-on-white-background-picture-id528311973?k=20&m=528311973&s=612x612&w=0&h=JorU3xPu9tUNSTYnj7vXtnPwzjxbv_m-1-z-7rww03M=", price: 999.99, owner_id: abby.id)
table = Item.create(name: "table", description: "a red table", image_url: "https://chairish-prod.freetls.fastly.net/image/product/sized/c6ed5dab-dd30-4efd-8af2-b58ce76479fd/american-country-red-painted-pine-farmhouse-dining-table-4990?aspect=fit&width=640&height=640", price: 999.99, owner_id: abby.id)
wrist_band = Item.create(name: "wrist band", description: "a red wrist band", image_url: "https://www.picclickimg.com/d/l400/pict/323450561633_/ACL-Weekend-One-Wristband-x1.jpg", price: 9.99, owner_id: gabriel.id)
painting = Item.create(name: "painting", description: "a vintage skis painting", image_url: "https://i.etsystatic.com/13764327/r/il/78c989/2281693596/il_794xN.2281693596_qkov.jpg", price: 250.99, owner_id: gabriel.id)
gold_chain = Item.create(name: "gold chain", description: "ice on my neck", image_url: "https://bnsec.bluenile.com/bluenile/is/image/bluenile/-oversized-hollow-curb-chain-necklace-in-14k-yellow-gold-/75087_main?$phab_detailmain$", price: 13_000.00, owner_id: sean.id)
virtual_coffee = Item.create(name: "coffee", description: "nft", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Coffee_cup_icon.svg/1200px-Coffee_cup_icon.svg.png", price: 2000.99, owner_id: sean.id)

# reviews
puts "🌱 Seeding reviews..."
review_1 = Review.create(body: "beautiful chair, very comfortable", rating: 9, item_id: chair.id, reviewer_id: abby.id)
review_2 = Review.create(body: "a table the whole family can enjoy", rating: 10, item_id: table.id, reviewer_id: gabriel.id)
review_3 = Review.create(body: "too skinny for my wrist", rating: 2, item_id: wrist_band.id, reviewer_id: sean.id)


puts "✅ Done seeding!"
