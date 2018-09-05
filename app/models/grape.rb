class Grape < ApplicationRecord
	has_many :wine_grapes
	has_many :wines, through: :wine_grapes

	validates :name, :type, presence: true
end
