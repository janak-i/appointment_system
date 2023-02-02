class Appointment < ApplicationRecord
	belongs_to :customer, class_name: 'User'
	belongs_to :counsellor, class_name: 'User'
	belongs_to :service, class_name: 'User'
end
