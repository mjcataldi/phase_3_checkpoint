class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  
  def index
    @user = User.all.order(:last_name)
  end
  
  def show
  end

  def edit
  end
  
  def new
  end
  
  def create
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  def set_user 
    @user = User.find(params[:id])
  end
  
end