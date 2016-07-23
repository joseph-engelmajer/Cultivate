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
	end

#===============================================================================
#===============================================================================

	def edit 
		@farm = current_user.farms
	end

#===============================================================================
#===============================================================================

	def update

		@farm = current_user.farms
		@farm.update(
			:name => params[:farm][:name],
			:description => params[:farm][:description]
			)
		@farm.save

		if @farm.save
			redirect_to controller: 'farms', action: 'show', id: @farm.id
		end	
	end

#===============================================================================
#===============================================================================

end
