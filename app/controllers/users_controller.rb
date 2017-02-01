class UsersController < ApplicationController
  #ensures you are loggged in before performing actions
  
  before_action :logged_in_user, only: [:edit, :update , :show]
  before_action :correct_user, only: [:edit, :update, :show]
  def show
  	@user = User.find(params[:id])
  end

  def new
    @user = User.new  	
  end

  def create
  	#Not safe ...use strong parameters
  	#@user = User.new(params[:user])
  	@user = User.new(user_params)
  	if @user.save
      log_in @user
  		#handle a successful save
  		flash[:success] = "Welcome ! Start reporting broken systems in your communities."
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      #Handle a successful update
      flash[:success] = "Profile updated"
      redirect_to @user
    else 
      render 'edit'
    end
  end
  
  private 
   def user_params
   	params.require(:user).permit(:name, :email, :password , :password_confirmation)
   end

   # Before filters

   #Confirms a logged-in user
   def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in"
      redirect_to login_url
    end
  end
 
   #confirms the correct user

   def correct_user
    @user = User.find(params[:id])
    #redirect_to(root_url) unless @user == current_user
    redirect_to(root_url) unless current_user?(@user)
  end
end
