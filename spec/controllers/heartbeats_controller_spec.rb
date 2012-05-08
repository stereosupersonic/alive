require 'spec_helper'

describe HeartbeatsController do
  render_views

  it "should create an new client" do
    http_login :user => 'test', :pw => 'test'
    expect {
      post :create, :client => FactoryGirl.attributes_for(:client)
    }.to change(Client, :count).by(1)

  end

  it "should not create  an new client when it exits" do
    FactoryGirl.create(:client)
    http_login :user => 'test', :pw => 'test'
    expect {
      post :create, :client => FactoryGirl.attributes_for(:client)
    }.to change(Client, :count).by(0)

  end
end
