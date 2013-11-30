class Image < ActiveRecord::Base
  # attr_accessible :title, :body
  validates :path, presence: true
  belongs_to :place
end
