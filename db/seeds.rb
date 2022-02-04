require 'faker'

User.create!(first_name: 'Example',
             last_name: 'User',
             email: 'user@example.ca',
             password: 'foobar',
             password_confirmation: 'foobar')

50.times do
  User.create!(first_name: Faker::Name.first_name.to_s,
               last_name: Faker::Name.last_name.to_s,
               email: "#{Faker::Name.first_name}@example.ca",
               password: 'password',
               password_confirmation: 'password')
end
