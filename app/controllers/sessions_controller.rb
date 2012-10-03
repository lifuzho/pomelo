class SessionsController < ApplicationController
  def login
    # display login form
    @user = User.new
  end

  def attempt_login
    # process login
    @user = User.new(params[:user])
    @user = @user.authenticate
    if @user.errors.blank?
      session[:user_id] = @user.id
      redirect_to '/login'
    else
      render :action => 'login'
    end
  end

  def logout
    session[:user_id] = nil
  end
end
