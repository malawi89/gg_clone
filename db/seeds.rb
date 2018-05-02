# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating base user and wandsworth area'
user = User.create!(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456", photo: "David")
area = Area.create!(name: "Wandsworth", user: user)

puts 'Done'

puts 'Creating 4 users and areas...'
4.times do |i|
  first_name = Faker::Name.first_name
  rando = rand(1..50)
  user = User.create!(
    first_name: first_name,
    last_name: Faker::Name.last_name,
    email: "#{first_name}@gmail.com",
    password: "123456",
    photo: "f2vmyd5krgjerc1mhky9.jpg"
  )

# `Avatars/#{rand(1..50)}.svg`
  area = Area.create!(
    name: Faker::RickAndMorty.location,
    user: user
    )
end

puts 'Creating runners...'

100.times do |i|
  first_name = Faker::Name.first_name
  rando = rand(1..50)
  runner = Runner.create!(
    first_name: first_name,
    last_name: Faker::Name.last_name,
    area_id: rand(1..5),
    email: "#{first_name}#{rand(1..100)}@gmail.com",
    status: ["never_run", "regular", "lapsed"].sample,
    coach_run: [true, false].sample,
    mission: [true, false].sample,
    group_run: [true, false].sample,
    photo: "f2vmyd5krgjerc1mhky9.jpg"
  )
end





puts 'Finished!'
