class SessionController < ApplicationController
    def new
      @user = User.find_by :email => params[:email]
    end
  
    def create
      user = User.find_by :email => params[:email]
        if user.present? && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_path
      else
        flash.now[:error] = 'Wrong login or password'
        render 'new'
        # redirect_to new_user_path
      end
    end
  
    def destroy
      session[:user_id] = nil
      redirect_to login_path
    end
  end