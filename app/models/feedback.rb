class Feedback < ApplicationRecord
	belongs_to :customer
	belongs_to :counsellor
end
