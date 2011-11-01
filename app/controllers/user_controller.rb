class UserController < ApplicationController
  def show
  end

  def index
    @users = User.all
    
    respond_to do |format|
    
      format.html
    end
  end

  def new
    @user= User.new
    
    respond_to do |format|
      format.html # new.html.erb
    end
    
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
