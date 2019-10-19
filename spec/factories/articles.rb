FactoryBot.define do
  factory :article do
    name {"hello!"}
    desicription {"こんにちわ"}
    user
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    after(:build) do |article|
      article.category = FactoryBot.create(:category)
    end
  end
end


FactoryBot.define do
  factory :category do
    name { "ruby" }
  end
end