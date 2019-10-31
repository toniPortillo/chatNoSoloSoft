FactoryBot.define do
  factory :message , class: Message do 
    content {FFaker::DizzleIpsum.paragraph}
    association :user, factory: :user
    association :conversation, factory: :conversation
  end
end
