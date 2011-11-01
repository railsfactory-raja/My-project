class ClientController < ApplicationController
  def show
      @client = Client.find(params[:id])
  end

  def index
    @clients = Client.all
    #@clients = Client.paginate :page=>params[:page], :order=>'created_at desc' ,:per_page => 2
  

    respond_to do |format|
      
      format.html #new.html.erb
    end
  end

  def new
    @client = Client.new
    
    
  end

  def create
    @client = Client.new(:client_name=>params[:name] ,:client_address=>params[:address], :client_contact=>params[:contact])
    #~ @client = Client.new(params[:client])
    @client.save
    redirect_to :action=> 'index'
    #~ format.html { render :action => "client/index" }
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
     @client.update_attributes(:client_name => params[:name], :client_address => params[:address], :client_contact => params[:contact])
     redirect_to :action=> 'index'
  end

  def destroy
     @client = Client.find(params[:id])
     @client.destroy
     redirect_to :action=>'index'
  end

end
