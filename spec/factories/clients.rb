# == Schema Information
#
# Table name: clients
#
#  id             :integer         not null, primary key
#  name           :string(255)
#  ip             :string(255)
#  mac            :string(255)
#  comment        :text
#  heartbeated_at :datetime
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#  hostname       :string(255)
#  port           :integer
#  user           :string(255)
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :client do
    name "lemmy 1"
    ip "123.123.123"
    mac "e0:f8:47:3a:0a:ea"
    comment "this is a comment"
    heartbeated_at 1.day.ago
  end
end
