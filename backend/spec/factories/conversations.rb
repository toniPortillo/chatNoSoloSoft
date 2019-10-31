FactoryBot.define do
  factory :conversation, class: Conversation do
    name { FFaker::Name.unique.name }
  end
end
