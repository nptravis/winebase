class Style < ApplicationRecord
	has_many :wines
	has_many :regions, through: :wines
	has_many :countries, through: :wines

	validates :name, presence: true
end
