desc 'Task for generating random users'
task generate_users: :environment do
  200.times do
    User.create!(first_name: Faker::Name.first_name,
                 last_name: Faker::Name.last_name,
                 email: Faker::Internet.email,
                 country: Faker::Address.country)
  end
end
