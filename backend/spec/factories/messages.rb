FactoryBot.define do
  factory :message, class: Message do 
    content {FFaker::AWS.product_description}
    association :conversations, factory: :conversation
    association :users, factory: :user
  end
end
