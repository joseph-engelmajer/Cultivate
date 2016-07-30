class UsersController < ApplicationController
	def show
		@user = User.find_by(id: params[:id])
		@products = Product.all 
		@purchase_options = PurchaseOption.all
		@practices = Practice.all
		render "show"
	end
end
