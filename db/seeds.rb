
puts 'Creating base user and wandsworth area'
url = "http://res.cloudinary.com/dn2idxe8p/image/upload/v1525273480/fobrdql7ebbkdjjd5l0w.jpg"
user = User.create!(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
area = Area.create!(name: "Wandsworth", user: user)
user.remote_photo_url = url
user.save

puts 'Done'

# puts 'Creating 4 users and areas...'
# 4.times do |i|
#   first_name = Faker::Name.first_name
#   rando = rand(1..50)
#   user = User.create!(
#     first_name: first_name,
#     last_name: Faker::Name.last_name,
#     email: "#{first_name}@gmail.com",
#     password: "123456",
#     photo: "f2vmyd5krgjerc1mhky9.jpg"
#   )

# # `Avatars/#{rand(1..50)}.svg`
#   area = Area.create!(
#     name: Faker::RickAndMorty.location,
#     user: user
#     )
# end

puts 'Creating runners...'

12.times do |i|
  url = "https://randomuser.me/api/portraits/thumb/men/#{rand(1..90)}.jpg"
  first_name = Faker::Name.first_name
  rando = rand(1..50)
  runner = Runner.create!(
    first_name: first_name,
    last_name: Faker::Name.last_name,
    area_id: 1,
    email: "#{first_name}#{rand(1..100)}@gmail.com",
    status: ["never_run", "regular", "lapsed"].sample,
    coach_run: [true, false].sample,
    mission: [true, false].sample,
    group_run: [true, false].sample
  )

  runner.remote_photo_url = url
  runner.save
end

puts 'Finished!'
