# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

#Destroy seeds
Attendance.destroy_all
Event.destroy_all
User.destroy_all

i = 0

10.times do
  user = User.create!(
    first_name: "bob#{i}",
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence,
    email: "bob#{i}@yopmail.com",
    encrypted_password: "azerty"
  );
  i = i + 1
end


10.times do
  event = Event.create!(
    title: Faker::Movie.title,
    location: Faker::Address.city,
    description: Faker::Lorem.sentence,
    price: 10
  );

end

