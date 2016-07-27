class Product < ApplicationRecord

	has_many :product_joins
	has_many :farms, :through => :product_join
end
