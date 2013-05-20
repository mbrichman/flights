class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:email])

    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to flights_url, :notice => "You have successfully signed in, #{@user.name}."
    else
      render 'new'
    end
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => "You have been successfully logged out."
  end
end
