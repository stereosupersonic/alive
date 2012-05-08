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
#

require 'spec_helper'

describe Client do
  it "should be valid" do
    FactoryGirl.build(:client).should be_valid  
  end
end
