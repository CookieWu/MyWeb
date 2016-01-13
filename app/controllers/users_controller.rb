class UsersController < ApplicationController

	def new
		
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
