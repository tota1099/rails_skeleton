FactoryBot.define do
  factory :user, class: 'User' do
    name { 'User Name' }
    email { 'example@test.com' }
    password { '$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey' }
  end
end
