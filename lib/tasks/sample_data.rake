namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Example Admin",
                         email: "admin@creative-soul.com",
                         password: "foobar",
                         password_confirmation: "foobar",
                         admin: true,
                         user_type: "Director")


    rnd_user_type = [ 'Student', 'Instructor' ]

    # User.create!(name: "Example User",
    #              email: "example@creative-soul.com",
    #              password: "foobar",
    #              password_confirmation: "foobar")

    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@creative-soul.com"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password,
                   user_type: rnd_user_type[Random.rand(2)])
    end

    users = User.all(limit: 6)
    50.times do
      users.each {
        |user| user.schedules.create!(class_date: DateTime.now,
                                      class_time: DateTime.now,
                                      class_duration: 1,
                                      student: "Example Student",
                                      class_type: "Private")}

    end

  end
end