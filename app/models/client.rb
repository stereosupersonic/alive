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
#  hostid         :string(255)
#

class Client < ActiveRecord::Base 
  validates_presence_of :hostid
end
