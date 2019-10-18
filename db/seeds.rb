# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
  Topic.create!(
      title: "Topic #{topic}"
  )
end

puts "3 Topics created"

10.times do |blog_index|
  Blog.create!(
      title: "My blog post #{blog_index}",
      body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
      topic_id: Topic.last.id
  )
end

puts "10 Blog items created"

5.times do |skill_index|
  Skill.create!(
      title: "Skill #{skill_index}",
      percent_utilized: 15
  )
end

puts "5 Skill items created"

9.times do |portfolio_index|
  Portfolio.create!(
      title: "Portfolio #{portfolio_index}",
      subtitle: "Contrary to popular belief, Lorem Ipsum is not simply random text.",
      body: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old",
      main_image: "http://placehold.it/1600x600",
      thumb_image: "http://placehold.it/350x200",
  )
end

puts "9 Portfolio items with React"

8.times do |portfolio_index|
  Portfolio.create!(
      title: "Portfolio #{portfolio_index}",
      subtitle: "Ruby on Rails",
      body: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old",
      main_image: "http://placehold.it/1600x600",
      thumb_image: "http://placehold.it/350x200",
      )
end

puts "8 Portfolio items with Ruby"

2.times do |portfolio_index|
  Portfolio.create!(
      title: "Portfolio #{portfolio_index}",
      subtitle: "Angular",
      body: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old",
      main_image: "http://placehold.it/1600x600",
      thumb_image: "http://placehold.it/350x200",
      )
end

puts "2 Portfolio items with React"
