class UsersController < ApplicationController
	def index
		@users=User.all
		render json: @users 
	end


	def search
		byebug

		if params[:user_type].blank?
			render json: { message: "user did not found" }
		else
			@parameter = params[:user_type].present?
			@results= Counsellor.all
			render json: @results
		end
	end
end




 