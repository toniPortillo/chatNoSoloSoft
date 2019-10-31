FactoryBot.define do
  factory :user, class: User do
    name { FFaker::Name.unique.name }
    
    trait :with_a_conversation_and_message do
      after(:build) do |user|
        user.conversations << FactoryBot.build(:conversation, 2)
        user.messages << FactoryBot.build(:message, 2)
      end
    end
  end
end
