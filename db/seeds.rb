# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
Post.destroy_all
Editor.destroy_all

creator1 = User.create!(name: "Ahmed", email: "Ahmed@example.com")
creator2 = User.create!(name: "Sara", email: "Sara@example.com")

post1 = Post.create!(title: "First Post", content: "Hello World", creator: creator1)
post2 = Post.create!(title: "Second Post", content: "hello", creator: creator2)

editor1 = User.create!(name: "rahma", email: "rahma@example.com")
editor2 = User.create!(name: "nouran", email: "nouran@example.com")

Editor.create!(user: editor1, post: post1)
Editor.create!(user: editor2, post: post1)
Editor.create!(user: editor1, post: post2)
