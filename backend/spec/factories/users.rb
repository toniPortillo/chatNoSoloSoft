FactoryBot.define do
  factory :user do
    name { FFaker::Name.unique.name }
    association :user, factory: :user
  end
end
