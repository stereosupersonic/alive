# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :client do
    name "MyString"
    ip "MyString"
    mac "MyString"
    comment "MyText"
    heartbeated_at ""
  end
end
