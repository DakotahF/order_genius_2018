class MenuItem < ApplicationRecord
  belongs_to :restaurant
  has_many :order_menu_items
  validates :name, uniqueness: { scope: :restaurant_id }

  def to_s
    name
  end
end
