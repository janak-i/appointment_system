class Appointment < ApplicationRecord
	belongs_to :customer, class 'User', foreign_key: 'customer_id'
	belongs_to :counsellor, class 'User', foreign_key: 'counsellor_id'
end
