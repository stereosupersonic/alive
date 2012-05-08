# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :client do
    name "lemmy 1"
    ip "123.123.123"
    mac "e0:f8:47:3a:0a:ea"
    comment "this is a comment"
    heartbeated_at ""
  end
end
