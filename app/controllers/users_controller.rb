class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		email = params[:email]
	    @user = User.find_by email: email

	    # if @user 
	      redirect_to skills_path
	    # else
	    #   render :new
	    # end
	end
end
