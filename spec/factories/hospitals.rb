FactoryBot.define do
  factory :hospital do
    sequence(:name) { |n| "this is bot hospital- #{n}" }
  end
end
