class Rating < ApplicationRecord
	belongs_to :wine
	belongs_to :user

	validates :score, :comment, :wine_id, :user_id, presence: true
end
