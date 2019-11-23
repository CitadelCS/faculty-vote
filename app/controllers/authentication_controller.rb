class AuthenticationController < ApplicationController
  
  skip_before_filter :verify_authenticity_token, :only => :create
  
  def signup_params
    params.require(:user).permit(:first_name, :last_name, :email, :created_at, :updated_at, :password, :confirm_password)
  end
  
  def signup
  end
  
  def signup_submit
    @user = User.create!({:first_name => params[:first_name]["First Name"], :last_name => params[:last_name]["Last Name"], :email => params[:email]["Email"], :created_at => "#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}", :updated_at => "#{Time.now.strftime("%Y-%m-%d %H:%M:%S")}", :password => params[:password]["Password"]})
    flash[:notice] = "#{@user.email} was successfully created."
    redirect_to "/"
  end
  
  def create
    if (User.exists?(email: params[:email], password: params[:pwd]))
      redirect_to proposals_path
    else
      redirect_to "/"
    end
    
  end
  
  def logout
    redirect_to "/"
  end
  
  def index 
  end
  
  
  
  def show
  end

end