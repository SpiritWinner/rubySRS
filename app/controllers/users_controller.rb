class UsersController < ApplicationController
	def index
		@user = User.all
	end

	def new

	end

	def create
		@user = User.new(report_params)
		@user.save
		redirect_to @user
		# render plain: params[:user].inspect
	end

	def show
		@user = User.find(params[:id])
	end

	private def report_params
		params.require(:user).permit(:email, :first_name, :last_name)
	end

end
