# :nocov:
class ScrapedTagSerializer < ActiveModel::Serializer
  attributes :id, :name, :scraped_attributes

  def scraped_attributes
    ScrapedAttributeSerializer.new(object.scraped_attributes.first).attributes
  end
end
# :nocov:
