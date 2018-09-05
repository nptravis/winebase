class Producer < ApplicationRecord
	has_many :wines

	validates :name, :website, presence: true
end
