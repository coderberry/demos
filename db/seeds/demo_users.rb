require "faker"

number_of_records = 1_000

puts "Truncating the Demo::User table"
Demo::User.delete_all

print "Creating #{number_of_records} Demo::User records ..."

number_of_records.times do |i|
  Demo::User.create!(
    name: Faker::Name.name,
    email: "demo_user_#{i + 1}@example.com",
    age: rand(18..100),
    bio: Faker::Lorem.paragraph,
    phone: Faker::PhoneNumber.phone_number,
    roles: Demo::User::ROLES.sample(rand(1..3)),
    is_active: [true, false].sample,
    settings: {theme: %w[light dark].sample, notifications: [true, false].sample},
    created_at: Faker::Time.between(from: 2.years.ago, to: Time.now),
    updated_at: Faker::Time.between(from: 1.year.ago, to: Time.now)
  )

  print "."
end

puts " done!"
