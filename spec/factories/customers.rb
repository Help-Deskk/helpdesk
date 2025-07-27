FactoryBot.define do
  factory :customer, class: 'User' do
    sequence(:email) { |n| "customer#{n}@email.com" }
    password { "password" }
    role { :customer }
  end
end
