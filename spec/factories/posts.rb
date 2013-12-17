FactoryGirl.define do
  factory :post do
    sequence(:title) { |n| "Awesome #{n} Post" }
    content "Awesome content"
  end
end
