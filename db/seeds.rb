puts "🌱 Seeding spices..."

# Seed your database here
10.times do 
    blog = Blog.create(
        title: Faker::Lorem.sentence,
        description: Faker::Lorem.paragraph
    )
end 

puts "✅ Done seeding!"
