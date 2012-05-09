class HeartbeatsController < ApplicationController
  before_filter :authenticate

  def create
    if params[:client][:hostid]
      @client = Client.find_or_create_by_hostid params[:client][:hostid]
      @client.heartbeated_at = Time.now
      @client.ip = params[:client][:ip]
      @client.hostname = params[:client][:hostname] if  params[:client].has_key?(:hostname)
    end   
    
    respond_to do |format|
      if @client && @client.save
        format.json { render :json =>  @client, :status => 200, :location => @client }
      else
        format.json { render :json =>   @client.errors,:status => :unprocessable_entity }
      end
    end
  end
end
