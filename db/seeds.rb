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

User.all.each do |user|
  50.times do
    user.invoice.create!(from_full_name: "#{user.first_name} #{user.last_name}",
                         from_email: "#{user.first_name}@example.ca")
  end
end
