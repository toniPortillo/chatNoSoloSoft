FactoryBot.define do
  factory :user do
    name { FFaker::Name.unique.name }
  end
end
