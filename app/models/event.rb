class Event < ActiveRecord::Base
  # attr_accessible :title, :body
  validates :name, presence: true
  has_and_belongs_to_many :places
end
