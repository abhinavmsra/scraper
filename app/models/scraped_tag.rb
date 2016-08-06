class ScrapedTag < ApplicationRecord
  validates_presence_of :name
  has_many :scraped_attributes, dependent: :destroy
  belongs_to :page
end
