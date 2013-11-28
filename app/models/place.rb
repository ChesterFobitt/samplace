class Place < ActiveRecord::Base
  # attr_accessible :title, :body

  validates :name, presence: true
  validates :address, presence: true
  validates :price_per_hour, presence: true
  validates :price_per_hour, numericality: { greater_than: 0}
  validates :description, presence: true
end
