class Property < ApplicationRecord
	resourcify
	belongs_to :user
	has_many_attached :images


	validates :title, :presence => true
	validates :price, :presence => true
	validates :rooms, :presence => true
	validates :bathrooms, :presence => true
	validates :address, :presence => true
	validates :dimentions, :presence => true
	validates :summary, :presence => true
	validates :features, :presence => true
	validates :direction, :presence => true
	validates :available_date, :presence => true
	
end
