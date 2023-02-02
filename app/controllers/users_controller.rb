class UsersController < ApplicationController
	def index
		@users=User.all
		render json: @users 
	end


	def search
		byebug
		counsellors = User.where('email LIKE ?', "%#{params[:email]}%")
		if counsellors.present?
			search_data = CounsellorSerializer.new(counsellors).serializable_hash
			render json: search_data, status: :ok
		else
			render json: { errors: 'Record Not Present' },
			status: :unprocessable_entity
		end
	end
end







 