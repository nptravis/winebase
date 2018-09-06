class UsersController < ApplicationController
	before_action :authentication_required, only: [:show]

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

end
