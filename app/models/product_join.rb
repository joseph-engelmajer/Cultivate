class ProductJoin < ApplicationRecord
	belongs_to :product
	belongs_to :farm
end
