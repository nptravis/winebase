class User < ApplicationRecord
	has_many :ratings
	has_many :wines, though: :ratings
	has_many :regions, through: :wines
	has_many :countries, through: :wines
	has_many :styles, through: :wines
	has_many :producers, through: :wines
	has_many :grapes, through: :wines
	has_secure_password

	validates :username, :email, presence: true
end
