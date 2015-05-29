require 'faker'

#Create Posts
50.times do
  Post.create!(
    title: Faker::Lorem.sentence,
    body:  Faker::Lorem.paragraph
    )
end
posts = Post.all

#Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: Faker::Lorem.paragraph
  )
end
post = Post.find_or_create_by(title: "Assignement-26 Unique Title", body: "Like the title says... unique.")
comment = Comment.find_or_create_by(body: "Assignment-26's unique comment.", post: post)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
