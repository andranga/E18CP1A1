class Product < ApplicationRecord
	belongs_to :owner, class_name: 'User'
	belongs_to :buyer, class_name: 'User'
	
end
