class UsersController < ApplicationController

before_action :require_user

def new
	@user = User.new
	@users = User.all
end

def create
	@user = User.new(user_params)
	if @user.save
		flash[:success] = "Created"
		redirect_to root_path
	else
		flash[:error] = "Nope"
      	render :new
    end
end


private 

def user_params
	params.require(:user).permit(
		:email,
		:password,
		:password_confirmation
	)
end

end
