class Country < ApplicationRecord
	has_many :wines
	has_many :producers, through: :wines
	has_many :styles, through: :wines
	has_many :ratings, through: :wines
	has_many :regions
	has_many :grapes, through: :wines

	validates :name, :continent, presence: true
end
