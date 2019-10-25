FactoryBot.define do
  factory :message do
    body {FFaker::DizzleIpsum.paragraph}
  end
end
