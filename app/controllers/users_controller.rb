class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
      flash[:success] = "Thanks for signing up!"
    else
      render :new
    end
  end

end
