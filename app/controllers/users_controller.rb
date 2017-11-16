class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
	# Create a new user with new and set the corresponding attributes from the params hash.
		@user = User.new
		@user.name = params[:user][:name]
		@user.email = params[:user][:email]
		@user.password = params[:user][:password]
		@user.password_confirmation = params[:user][:password_confirmation]
	# Save the new user to the db. If the db save is successful, add a flash message and then redirect the user to the root path
		if @user.save
			flash[:notice] = "Welcome to PostEnvy #{@user.name}!"
			redirect_to confirm_path
	# Otherwise, display an error and render the new view.
		else
			flash.now[:alert] = "There was an error creating your account. Please try again."
			render :new
		end
	end

	def confirm
		@user = User.new
		@user.name = params[:user][:name]
		@user.email = params[:user][:email]
	end

end
