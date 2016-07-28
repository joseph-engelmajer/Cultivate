class Farm < ApplicationRecord

	mount_uploaders :avatars, AvatarUploader

	validates :name, presence: :true 

	belongs_to :user 
	# has_many :photos
	has_many :comments

	has_many :product_joins
	has_many :products, :through => :product_joins

	has_many :purchase_option_joins
	has_many :purchase_options, :through => :purchase_option_joins

	has_many :practice_joins
	has_many :practices, :through => :practice_joins

	# acts_as_gmappable

 	acts_as_mappable
  	before_validation :geocode_address, :on => :create

  private
	  def geocode_address
	    geo=Geokit::Geocoders::MultiGeocoder.geocode (address)
	    errors.add(:address, "Could not Geocode address") if !geo.success
	    self.lat, self.lng = geo.lat,geo.lng if geo.success
	  end
	
end
