class FarmsController < ApplicationController
		
protect_from_forgery with: :null_session, only: [:get_farms]

#===============================================================================
#===============================================================================

	def show
		@farm = Farm.find_by(id: params[:id])
	end

#===============================================================================
#===============================================================================

	def get_farms
		farms = Farm.all

		product = params[:Product]
		purchase_option = params[:PurchaseOption]
		practice = params[:Practice]

		unless product.nil? || product.empty?
			farms = Farm.joins(:product_joins)
				.where(:product_joins => { :product_id => product })
				.select("farms.*, COUNT(product_id)")
				.group("farms.id")
				.having("COUNT(product_id) >= ?", product.length)


			# ProductJoin.where(product_id: product)
			# .uniq{|pj| pj.farm_id}
			# .map{|pj| pj.farm}
		end	

		# if purchase_option.present? && purchase_option.length > 0 
		# 	farms = farms.where()	
		# end	

		# if practice.present? && practice.length > 0 
		# 	farms = farms.where()
		# end

		render json: farms
	end

#===============================================================================
#===============================================================================

end
