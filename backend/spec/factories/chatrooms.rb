FactoryBot.define do
  factory :chatroom do
    name { FFaker::Name.unique.name }
  end
end
