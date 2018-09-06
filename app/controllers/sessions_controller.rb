class SessionsController < ApplicationController

	def new
		@user = User.new
	end

	def create
		if auth_hash = request.env["omniauth.auth"]
      @user = User.find_or_create_by_omniauth(auth_hash)
      login(@user)
      redirect_to user_path(@user)
    else
    	redirect_to 'index'
    end
	end

	def destroy
		session.clear
		redirect_to
		login_path
	end

end