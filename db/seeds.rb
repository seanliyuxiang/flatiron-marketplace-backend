require 'faker'

puts "🌱 Seeding data..."

User.destroy_all
Item.destroy_all
Review.destroy_all

puts "🌱 Seeding users..."
puts "🌱 Seeding items..."
puts "🌱 Seeding reviews..."

# Create 10 random users
10.times do
    user = User.create(
        username: Faker::Name.first_name,
        location: Faker::Address.city
    )
    
    # For each user, create 5 random items
    5.times do
        item = Item.create(
            name: Faker::Commerce.product_name,
            description: Faker::Lorem.paragraph(sentence_count: 2),
            price: Faker::Commerce.price,
            image_url: "https://loremflickr.com/#{rand(150..200)}/#{rand(150..200)}/all",
            owner_id: user.id
        )
        
        # For each item, create 2 random reviews
        2.times do
            review = Review.create(
                body: Faker::Lorem.paragraph(sentence_count: 3),
                rating: Faker::Number.between(from: 0, to: 5),
                item_id: item.id,
                reviewer_id: user.id
            )
        end
        
    end
    
end


puts "✅ Done seeding!"
