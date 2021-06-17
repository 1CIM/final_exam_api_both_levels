FactoryBot.define do
  factory :comment do
    body { "AComment" }
    association :article
  end
end
