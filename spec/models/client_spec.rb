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

require 'spec_helper'

describe Client do
  it "should be valid" do
    FactoryGirl.build(:client).should be_valid  
  end     
  
  it "should not be valid without hostid" do
    FactoryGirl.build(:client, :hostid => '').should_not be_valid  
  end  
  
  it "should be status online when last update 10 minutes before" do
      FactoryGirl.build(:client, :heartbeated_at => 9.minutes.ago).status.should == 'online'
  end  
  
  it "should be status offline when last update > 10 minutes " do
      FactoryGirl.build(:client, :heartbeated_at => 11.minutes.ago).status.should == 'offline'
  end  
end
