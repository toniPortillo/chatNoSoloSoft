FactoryBot.define do
  factory :message, class: Message do 
    content {FFaker::AWS.product_description}
    created_by {FFaker::Name.name}
    association :conversations, factory: :conversation
    association :users, factory: :user
  end
end
