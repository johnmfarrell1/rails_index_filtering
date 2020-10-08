desc 'Task for generating data users'
task populate_database: :environment do
  200.times do
    User.create!(first_name: Faker::Name.first_name,
                 last_name: Faker::Name.last_name,
                 email: Faker::Internet.email,
                 country: Faker::Address.country)
  end

  800.times do
    Post.create!(title: "Post about #{Faker::Beer.name}",
                 body: Faker::Marketing.buzzwords,
                 user: User.all.sample,
                 status: Post::STATUSES.sample)

  end

  1000.times do
    Comment.create!(text: Faker::Quote.famous_last_words,
                    user: User.all.sample,
                    post: Post.all.sample,
                    status: Comment::STATUSES.sample)
  end
end
