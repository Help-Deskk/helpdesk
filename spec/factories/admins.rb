FactoryBot.define do
  factory :admin, class: 'User' do
    sequence(:email) { |n| "admin#{n}@email.com" }
    password { "password" }
    role { :admin }
  end
end
