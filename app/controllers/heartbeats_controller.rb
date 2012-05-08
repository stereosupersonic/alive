class HeartbeatsController < ApplicationController
  before_filter :authenticate

  def create
    @client = Client.find_or_create_by_mac params[:client][:mac]     
    @client.heartbeated_at = Time.now
    @client.ip = params[:client][:ip] 
    respond_to do |format|
      if @client.save 
        format.json { render :json =>  @client, :status => 200, :location => @client }
      else
        format.json { render :json =>   @client.errors,:status => :unprocessable_entity }
      end
    end
  end
end
