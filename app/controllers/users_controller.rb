class UsersController < ApplicationController
	before_action :set_user, only: [:destroy]

	def index
		@users = User.all
	end

	def destroy
		begin
			if @user.destroy
			flash[:notice] = "User deleted successfully"
			redirect_to users_path
		else
			flash[:error] = "Error in deleting user"
			redirect_to users_path
		end
		rescue StandardError => e
			flash[:error] = "Error deleting the user"
			redirect_to users_path
		end
	end

	private
	 def set_user
	 	@user = User.find(params[:id])
	 end
end