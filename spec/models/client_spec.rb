require 'spec_helper'

describe Client do
  it "should be valid" do
    FactoryGirl.build(:client).should be_valid  
  end
end
