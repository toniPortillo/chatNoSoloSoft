FactoryBot.define do
  factory :user, class: User do
    name { FFaker::Name.unique.name }
  end
end
