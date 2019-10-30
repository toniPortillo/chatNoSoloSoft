FactoryBot.define do
  factory :message , class: Message do 
    body {FFaker::DizzleIpsum.paragraph}
    association :user, factory: :user, strategy: :build
  end
end
