class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authentication(params[:password])
      session[:user_id] = user.id
    else
      render :new
    end
  end

  def destroy
  end

end
