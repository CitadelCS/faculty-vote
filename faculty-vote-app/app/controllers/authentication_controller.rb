class AuthenticationController < ApplicationController
  def signup_params
    params.require(:user).permit(:first_name, :last_name, :email, :created_at, :updated_at, :password, :confirm_password)
  end
  
  def signup
    @user = User.new
  end
  
  def signup_submit
    @user = User.create!({:first_name => params[:first_name], :last_name => params[:last_name], :email => params[:email], :created_at => "#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}", :updated_at => "#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}", :password => params[:password]})
    flash[:notice] = "#{@user.email} was successfully created."
    redirect_to proposals_path
  end
  
  def index 
  end
  
  
  
  def show
  end

end