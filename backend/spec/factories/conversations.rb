FactoryBot.define do
  factory :conversation, class: Conversation do
    name { FFaker::Name.unique.name }
    association :user, factory: :user
    association :message, factory: :message
  end
end
