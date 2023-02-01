class ServicesController < ApplicationController

	def index
		@services=Service.all
		render json: @Services
	end

	def show
		@service=Service.find(params[:id])
		render json: @service
	end


	def new
		@service=Service.new
	end

	def create
		@service=Service.new(services_params)
		if @service.save
			render json: @service,  status: 201
		else
			render json: {errors: @service.errors.full_messages}
		end
	end

	private
	def services_params
		params.require(:service).permit(:service_name, :desc, :counsellor_id)
	end
end

