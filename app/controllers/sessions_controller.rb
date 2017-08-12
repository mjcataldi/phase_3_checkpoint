class SessionsController < ApplicationController
  
  def new
    render :"sessions#new"
  end
  
  def create
    # add logic here to log a user in
  end
  
  def destroy
    session.delete([:user_id])
    redirect_to :"sessions#new"
  end
  
end