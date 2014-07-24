FactoryGirl.define do
  factory :user do
    sequence(:name)   { |n| "Person #{n}" }
    sequence(:email)  { |n| "person_#{n}@example.com" }
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end

  factory :schedule do
    class_date      "12/02/1974"
    class_time      "10:30 PM"
    class_duration  1
    student         "Example Student"
    class_type      "Private"
    user
  end

end