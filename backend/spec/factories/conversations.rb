FactoryBot.define do
  factory :chatroom do
    name { FFaker::Name.unique.name }
    association :user, factory: :user
    association :conversation, factory: :conversation
  end
end
