FactoryBot.define do
  factory :account_user do
    association :account, strategy: :build
    association :user, strategy: :build
  end
end
