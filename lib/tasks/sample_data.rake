namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Example Admin",
                         email: "admin@creative-soul.com",
                         password: "foobar",
                         password_confirmation: "foobar",
                         admin: true)

    User.create!(name: "Example User",
                 email: "example@creative-soul.com",
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@creative-soul.com"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end