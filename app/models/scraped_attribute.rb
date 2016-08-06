class ScrapedAttribute < ApplicationRecord
  validates_presence_of :name
  belongs_to :scraped_tag
end
