class Page < ApplicationRecord
  validates_presence_of :url
  has_many :scraped_tags, dependent: :destroy
end
