class SessionsController < ApplicationController
  
  def new
    render "new"
  end
  
  def create
    @user = User.find_by(email: params[:session][:email]).try(:authenticate, params[:session][:password])  
    
    if @user
      session[:user_id] = @user.id
      redirect_to user_path @user
    else
      @errors = ["Could not find this user or password is incorrect.  Please try again."]
      render "new"
    end
    
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to new_session_path
  end
  
  # private
  # def user_params
  #   params.require(:user).permit(:first_name, :last_name, :email, :password)
  # end
  
end