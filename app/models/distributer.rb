class Distributer < ApplicationRecord
  has_many :wines

  validates :location, :name, presence: true
end
