class PurchaseOptionJoinsController < ApplicationController

	def create
		purchase_option_join = PurchaseOptionJoin.create(purchase_option_join_params)
		render json: purchase_option_join
	end

# ==================================================================================================
# ======== ****** PRIVATE **** =====================================================================
# ==================================================================================================

	private

	def purchase_option_join_params
		params.require(:purchase_option_join).permit(:farm_id, :purchase_option_id)
	end

end
