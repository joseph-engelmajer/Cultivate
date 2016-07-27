class Practice < ApplicationRecord
	has_many :practice_joins
	has_many :farms, :through => :practice_joins
end
