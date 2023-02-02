class AppointmentsController < ApplicationController
	def index
		@appointments=Appointment.all
		render json: @appointments
	end


	def show
		@appointment=Appointment.find(params[:id])
		render json: @appointment
	end

	def new
	end


	def create
		@appointment=Appointment.new(appointment_params)
		if @appointment.save
			render json: @appointment, status: 200
		else
			render json: {errors: @appointment.errors_full_messages0}
		end
	end

	# def counsellorlist
	# 	byebug
	# 	@counsellors=Counsellor.all
	# 	render json: @counsellors
	# end



	private
	def appointment_params
		params.permit(:date, :time, :customer_id, :counsellor_id, :service_id)
	end	
end





