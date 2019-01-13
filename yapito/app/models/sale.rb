class Sale < ApplicationRecord
	#belongs_to :buyer_id, class_name: 'User'
	belongs_to :user
	belongs_to :product
	
end
