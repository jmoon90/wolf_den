# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'john@yahoo.com'
    password 'foobar08'
    password_confirmation 'foobar08'
  end
end
