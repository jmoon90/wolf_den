# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    association :post

    sequence(:body) { |n| "I disagree with point #{n} that you made" }
    sequence(:email) { |n| "troll#{n}@yahoo.com" }
  end
end
