puts "🌱 Seeding spices..."

# Seed your database here
10.times do 
    blog = Blog.create(
        title: Faker::Lorem.sentence,
        description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true)
    )


    rand(1..5).times do
        post = Post.create(
        title: Faker::Lorem.sentence,
        description: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true),
        blog_id: blog.id
        )
      end
end




puts "✅ Done seeding!"
