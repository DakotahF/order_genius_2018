class MenuItem < ApplicationRecord
  belongs_to :restaurant
  validates :name, uniqueness: { scope: :restaurant_id }
end
