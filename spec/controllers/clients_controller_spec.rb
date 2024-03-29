require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ClientsController do
  render_views

  before(:each) do
    http_login :user => 'test', :pw => 'test'
    @client  =  FactoryGirl.create(:client)
  end

  describe "GET index" do
    before(:each) do
      get :index
    end

    it "assigns all clients as @clients" do
      assigns(:clients).should eq([@client])
    end

    it "should render index" do
      response.should render_template(:index)
    end
  end

  describe "GET show" do
    before(:each) do
      get :show, {:id => @client.to_param}
    end

    it "assigns the requested client as @client" do
      assigns(:client).should eq(@client)
    end

    it "should render show" do
      response.should render_template(:show)
    end
  end

  describe "GET new" do

    before(:each) do
      get :new
    end

    it "assigns a new client as @client" do
      assigns(:client).should be_a_new(Client)
    end

    it "should render new" do
      response.should render_template(:new)
    end
  end

  describe "GET edit" do

    before(:each) do
      get :edit, {:id => @client.to_param}
    end

    it "should render edit" do
      response.should render_template(:edit)
    end

    it "assigns the requested client as @client" do

      assigns(:client).should eq(@client)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "creates a new Client" do
        expect {
          post :create, :client => FactoryGirl.attributes_for(:client)
        }.to change(Client, :count).by(1)
      end

      it "assigns a newly created client as @client" do
        post :create, :client => FactoryGirl.attributes_for(:client)
        assigns(:client).should be_a(Client)
        assigns(:client).should be_persisted
      end

      it "redirects to the created client" do
        post :create,  :client => FactoryGirl.attributes_for(:client)
        response.should redirect_to(Client.last)
      end
    end

    describe "with invalid params" do
      before(:each) do
        Client.any_instance.stub(:save).and_return(false)
        post :create, :client => {}
      end
      it "assigns a newly created but unsaved client as @client" do

        assigns(:client).should be_a_new(Client)
      end

      it "re-renders the 'new' template" do
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested client" do
        Client.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => @client.to_param, :client => {'these' => 'params'}
      end

      it "assigns the requested client as @client" do

        put :update, :id => @client.to_param, :client => FactoryGirl.attributes_for(:client)
        assigns(:client).should eq( @client)
      end

      it "redirects to the client" do
        put :update, :id => @client.to_param, :client => FactoryGirl.attributes_for(:client)
        response.should redirect_to(@client)
      end
    end

    describe "with invalid params" do
      before(:each) do
        # Trigger the behavior that occurs when invalid params are submitted
        Client.any_instance.stub(:save).and_return(false)
        put :update, :id => @client.to_param, :client => {}
      end

      it "assigns the client as @client" do
        assigns(:client).should eq(@client)
      end

      it "re-renders the 'edit' template" do
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested client" do

      expect {
        delete :destroy, :id => @client.to_param
      }.to change(Client, :count).by(-1)
    end

    it "redirects to the clients list" do
      delete :destroy, :id => @client.to_param
      response.should redirect_to(clients_url)
    end
  end

end
