class Region < ApplicationRecord
	belongs_to :country
	has_many :wines
	has_many :styles, through: :wines

	validates :name, :country_id, presence: true
end
