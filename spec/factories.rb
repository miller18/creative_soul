FactoryGirl.define do
  factory :user do
    name     "Anthony Miller"
    email    "anthony@tiny-zebra.com"
    password "foobar"
    password_confirmation "foobar"
  end
end