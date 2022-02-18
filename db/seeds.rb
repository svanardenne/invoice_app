require 'faker'

User.create!(first_name: 'Example',
             last_name: 'User',
             email: 'user@example.ca',
             phone_number: Faker::PhoneNumber.phone_number,
             address: Faker::Address.street_address,
             city: Faker::Address.city,
             province: Faker::Address.state_abbr,
             country: Faker::Address.country,
             postal_code: Faker::Address.postcode,
             password: 'foobar',
             password_confirmation: 'foobar')

50.times do
  User.create!(first_name: Faker::Name.first_name,
               last_name: Faker::Name.last_name,
               email: "#{Faker::Name.first_name}@example.ca",
               phone_number: Faker::PhoneNumber.phone_number,
               address: Faker::Address.street_address,
               city: Faker::Address.city,
               province: Faker::Address.state_abbr,
               country: Faker::Address.country,
               postal_code: Faker::Address.postcode,
               password: 'password',
               password_confirmation: 'password')
end

User.all.each do |user|
  counter = 0
  50.times do
    user.invoices.create!(from_full_name: "#{user.first_name} #{user.last_name}",
                          from_email: "#{user.first_name}@example.ca",
                          from_phone: user.phone_number,
                          from_address: user.address,
                          from_city: user.city,
                          from_country: user.country,
                          from_province: user.province,
                          from_postal_code: user.postal_code,
                          notes: Faker::Lorem.paragraph,
                          to_full_name: full_name = "#{Faker::Name.first_name} #{Faker::Name.last_name}",
                          to_email: "#{full_name.split.first}@example.ca",
                          to_phone: Faker::PhoneNumber.phone_number,
                          to_address: Faker::Address.street_address,
                          to_city: Faker::Address.city,
                          to_province: Faker::Address.state_abbr,
                          to_country: Faker::Address.country,
                          to_postal_code: Faker::Address.postcode,
                          invoice_number: counter += 1)
  end
  5.times do
    user.invoice_templates.create!(to_full_name: full_name = "#{Faker::Name.first_name} #{Faker::Name.last_name}",
                                   to_email: "#{full_name.split.first}@example.ca",
                                   to_phone: Faker::PhoneNumber.phone_number,
                                   to_address: Faker::Address.street_address,
                                   to_city: Faker::Address.city,
                                   to_province: Faker::Address.state_abbr,
                                   to_country: Faker::Address.country,
                                   to_postal_code: Faker::Address.postcode,
                                   notes: Faker::Lorem.paragraph,
                                   user_id: user.id,
                                   template_name: Faker::Company.name)
  end
end
