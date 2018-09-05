class Wine < ApplicationRecord
	belongs_to :producer
	belongs_to :region
	belongs_to :country
	belongs_to :style
	has_many :ratings
	has_many :grapes

	validates :vintage, :name, :price, :producer_id, :region_id, :country_id, :style_id, presence: true
end
