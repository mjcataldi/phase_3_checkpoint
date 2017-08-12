require 'faker'

Concert.destroy_all
User.destroy_all
Attendance.destroy_all

15.times do
  Concert.create(band: Faker::RockBand.name, venue: "#{Faker::LordOfTheRings.location}", date: Faker::Date.forward(rand(30)), start_time: "8:00 PM")
end

5.times do |number|
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "#{number}@email.com", password: "password")
end

concerts = Concert.all
users = User.all

15.times do
  Attendance.create(attendee: users.sample, concert: concerts.sample)
end