class SessionsController < ApplicationController
  
  def new

  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      # had a typo on the below line of code.
      session[:user_id] = user.id
      # redirect_to root_url, notice: "Logged in!"
      redirect_to :controller=>'users', :action => 'index'
    else
      flash.now.alert = "Email or pin is invalid"
      render "new"
    end
  end




  	# user = User.authenticate(params[:email], params[:passowrd])
  	# if user
  	# 	session[:user_id] = user.user_id
  	# 	redirect_to root_url, :notice => "Logged in!"
  	# else
  	# 	flash.now.alert = "Invalid email/username or password"
  	# 	render "new"
  	# end
  

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, :notice => "Logged out!"
  end



  # def user_params
  #   params.require(:user).permit(:email, :password, :password_confirmation)
  # end
end
