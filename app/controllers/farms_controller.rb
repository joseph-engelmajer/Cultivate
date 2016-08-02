class FarmsController < ApplicationController
		
protect_from_forgery with: :null_session, only: [:get_farms]

#===============================================================================
#===============================================================================

	def show
		@farm = Farm.find_by(id: params[:id])
		@farm_id = @farm.id
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
		end	

		unless purchase_option.nil? || purchase_option.empty?
			farms = Farm.joins(:purchase_option_joins)
				.where(:purchase_option_joins => { :purchase_option_id => purchase_option })
				.select("farms.*, COUNT(purchase_option_id)")
				.group("farms.id")
				.having("COUNT(purchase_option_id) >= ?", purchase_option.length)
		end	

		unless practice.nil? || practice.empty?
			farms = Farm.joins(:practice_joins)
				.where(:practice_joins => { :practice_id => practice })
				.select("farms.*, COUNT(practice_id)")
				.group("farms.id")
				.having("COUNT(practice_id) >= ?", practice.length)
		end	

		p farms.to_json
		render json: farms
	end

#===============================================================================
#===============================================================================

end
