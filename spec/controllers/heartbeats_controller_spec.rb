require 'spec_helper'

describe HeartbeatsController do
  render_views
  before(:each) do
    http_login :user => 'test', :pw => 'test'
  end
  it "should create an new client" do

    expect {
      post :create, :client => FactoryGirl.attributes_for(:client)
    }.to change(Client, :count).by(1)

  end

  it "should not create  an new client when it exits" do
    FactoryGirl.create(:client)
    expect {
      post :create, :client => FactoryGirl.attributes_for(:client)
    }.to change(Client, :count).by(0)

  end

  it "should update the heartbeated_at" do
    @client = FactoryGirl.create(:client, :heartbeated_at => 1.day.ago)
    post :create, :client => FactoryGirl.attributes_for(:client)
    @client.reload.heartbeated_at.to_date.should == Time.now.to_date
  end 
  
  it "should update the ip" do
    @client = FactoryGirl.create(:client, :heartbeated_at => 1.day.ago,:ip => "100.100.200.100")
    post :create, :client => FactoryGirl.attributes_for(:client,:ip => "200.200.200.200")
    @client.reload.ip.should == "200.200.200.200"
  end
  
  it "should not update the name" do
    @client = FactoryGirl.create(:client, :heartbeated_at => 1.day.ago,:name => "test1")
    post :create, :client => FactoryGirl.attributes_for(:client,:name => "changed test1")
    @client.reload.name.should == "test1"
  end  
  
  it "should not update the hostname" do
    @client = FactoryGirl.create(:client, :heartbeated_at => 1.day.ago,:name => "test1")
    post :create, :client => FactoryGirl.attributes_for(:client,:name => "changed test1").merge(:hostname => "test.blah.de")
    @client.reload.hostname.should ==  "test.blah.de"
  end
end
