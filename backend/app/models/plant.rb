class Plant < ApplicationRecord
  has_many :garden_plants, dependent: :destroy
  has_many :gardens, through: :garden_plants
end
