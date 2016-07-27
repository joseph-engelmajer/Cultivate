class PurchaseOptionJoin < ApplicationRecord
	belongs_to :purchase_option
	belongs_to :farm
end
