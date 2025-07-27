FactoryBot.define do
  factory :technician, class: 'User' do
    sequence(:email) { |n| "technician#{n}@email.com" }
    password { "password" }
    role { :technician }
  end
end
