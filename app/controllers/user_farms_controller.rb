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
			:address => params[:farm][:address],
			:description => params[:farm][:description]
			)
		@farm.save	

		if @farm.save
			redirect_to controller: 'user_farms', action: 'index'
		end	
	end

#===============================================================================
#===============================================================================

	def edit 
		@farm = current_user.farms.find_by(id: params[:id])
	
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
			puts "\n\n---------------------------"
			p option_id
			p params[:option_description][option_id.to_s] 
			p option.save
			p option.errors.full_messages
			p option.id
		end
			
		@farm.save

		if @farm.save
			redirect_to controller: 'farms', action: 'show', id: @farm.id
		end	
	end

#===============================================================================
#===============================================================================

	def api
		
	end

#===============================================================================
#===============================================================================

private

	def user_farm_params
		params.require(:farm).permit(:name, :description, :address, :product_description,
		 :insta_link, :fb_link, :twitter_link, :pinterest_link, :woof_link, :site_link,
		 practice_ids:[], purchase_option_ids:[], product_ids:[], avatars: [])
	end


end
