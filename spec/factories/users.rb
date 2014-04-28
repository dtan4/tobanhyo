# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "dtan4"
    email "dtan4@example.com"
    admin false
  end

  factory :admin, class: User do
    name "admin"
    email "admin@example.com"
    admin true
  end

  factory :user_without_name, class: User do
    name ""
    email "dtan4@example.com"
    admin false
  end

  factory :user_without_email, class: User do
    name "dtan4"
    email ""
    admin false
  end
end
