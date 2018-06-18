class Restaurant < ApplicationRecord
  has_many :menu_items
  validates :name, presence: true, uniqueness: true

  def to_s
    name
  end
end
