class UsersController < ApplicationController
  respond_to :html, :js # tell the controller what it can respond to here

  # redirects are handled in controllers
  # see: http://stackoverflow.com/questions/3241154/
  

  def index
    @user = User.first
  end
  
  def new
  	@user = User.new

    # `logger.debug I am new`
  end

  def edit
    @user = User.find(params[:id])

    #redirect_to(user_path)
  end

  def update
    @user= User.find(params[:id])

    respond_to do |format|
      # if @user.update_attributes(params[:user])
      if @user.update_attributes(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    redirect_to :controller => 'users', :action => 'index'
  end

  # saves user to database
  def create

    # `logger.debug 'I am creating'`

    @user = User.new(user_params)
    # the below line doesn't work in rails 4.x
  	# @user = User.new(params[:user])
  	if @user.save
      session[:user_id] = @user.id

  		# redirect_to root_url, :notice => "Signed up!"
      # redirect_to :controller=>'users', :action => 'index', :notice => "Signed up!"

      # Tell the UserMailer to send a welcome email after save
      UserMailer.welcome_email(@user).deliver

      # add to render partial using JS
      respond_to do |format|
        if @user.save
          @user_saved = true # so the js file can render the correct response
          format.js # will auto render the correct js file
          # redirect_to users/index :notice => "Signed up!"
          format.html {redirect_to :controller => 'users', :action => 'index', :notice => "Signed up!"}
        else
          @user_saved = false # so the js file can render the correct response
          format.js # actually means: if the client ask for js -> return file.js
          format.html {render "new"}
        end
      end
    else
  		render "new"
  	end
  end

  def delete
    # the below line calls the destroy method / action
    self.destroy
  end

  def destroy
    session[:user_id] = nil
    @user = User.find(params[:id])
    @user.destroy
    redirect_to :controller=>'users', :action => 'new'
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :credit, :phoneNumber, :RFID)
  end
end