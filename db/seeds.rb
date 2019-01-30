require 'faker'

Comment.destroy_all
Pin.destroy_all
User.destroy_all

10.times do
  user = User.create!(user_name: Faker::Ancient.unique.god)
end

20.times do
  pin = Pin.create!(pins_name: Faker::Ancient.unique.primordial, url: Faker::Internet.url, user_id: rand(1..10))
end

30.times do
  comment = Comment.create!(comment: Faker::Shakespeare.hamlet_quote, user_id: rand(1..10), pin_id: rand(1..20))
end
