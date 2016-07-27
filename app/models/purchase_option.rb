class PurchaseOption < ApplicationRecord
	has_many :purchase_option_joins
	has_many :farms, :through => :purchase_option_joins
	accepts_nested_attributes_for :purchase_option_joins
end
