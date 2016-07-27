class UserFarmsController < ApplicationController

	def index
		@farms = current_user.farms
	end

#===============================================================================
#===============================================================================

	def new
		@farm = current_user.farms.new
	end

#===============================================================================
#===============================================================================	

	def create
		@farm = current_user.farms.new(
			:name => params[:farm][:name],
			:description => params[:farm][:description])
		@farm.save	

		if @farm.save
			redirect_to controller: 'user_farms', action: 'index'
		end	
	end

#===============================================================================
#===============================================================================

	def edit 
		@farm = current_user.farms.find_by(id: params[:id])
		# @csa = PurchaseOption.find(1)
		# @buying_club = PurchaseOption.find(2)
		# @cooperative = PurchaseOption.find(3)
		# @farm_stand = PurchaseOption.find(4)
		# @farmers_market = PurchaseOption.find(5)
		# @restaurant = PurchaseOption.find(6)
		@purchase_options = PurchaseOption.all
	end

#===============================================================================
#===============================================================================

	def update

		@farm = current_user.farms.find_by(id: params[:id])
		@farm.update(user_farm_params)

		@farm.purchase_option_joins.each do |option|
			option_id = option.purchase_option_id
			option.option_description = params[:option_description][option_id.to_s] 
			option.save
		end
			


		@farm.save

		if @farm.save
			redirect_to controller: 'farms', action: 'show', id: @farm.id
		end	
	end

#===============================================================================
#===============================================================================

private

	def user_farm_params
		params.require(:farm).permit(:name, :description,
		 practice_ids:[], purchase_option_ids:[], product_ids:[], avatars: [])
	end


end
