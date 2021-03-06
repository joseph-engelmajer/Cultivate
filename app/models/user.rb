class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: :true 
  validates :location, presence: :true 

  has_many :farms 
  has_many :comments      

  acts_as_mappable :auto_geocode=>{:field=>:location, :error_message=>'Could not geocode address'}
end
