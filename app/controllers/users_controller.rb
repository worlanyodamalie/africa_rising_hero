class UsersController < ApplicationController
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
  		#handle a successful save
  		flash[:success] = "Welcome ! Start reporting broken systems in your communities."
  		redirect_to @user
  	else
  		render 'new'
  	end
  end
  
  private 
   def user_params
   	params.require(:user).permit(:name, :email, :password , :password_confirmation)
   end

end
