# class CustomersController < ApplicationController
# 	before_action :authentication
	
# 	def index
# 		@customers=Customer.all
# 		render json: @customers
# 	end


# 	def show
# 		@customer=Customer.find(params[:id])
# 		render json: @customer
# 	end


# 	def create
# 		byebug
# 		@customer= Customer.new(customer_params)
# 		if @customer.save
# 			render json: @customer, status: 201
# 		else
# 			render json: {erors: @customer.errors_full_messages}, status: 503
# 		end
# 	end
# 	private
# 	def  customer_params
# 		params.require(:customer).permit(:email, :password)
# 	end


# end
