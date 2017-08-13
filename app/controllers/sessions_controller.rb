class SessionsController < ApplicationController
  
  def new
    render "new"
  end
  
  def create
    @user = User.find_by(email: params[:session][:email]).try(:authenticate, params[:session][:password])  
    
    if @user
      session[:user_id] = @user.id
      redirect_to user_path @user
      p "MADE IT"
    else
      @errors = ["Could not find this user.  Maybe you need to register?"]
      redirect_to new_session_path
      p "NOPE"
    end
    
  end
  
  def destroy
    session.delete([:user_id])
    redirect_to new_session_path
  end
  
end