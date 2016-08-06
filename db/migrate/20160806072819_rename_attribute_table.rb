class RenameAttributeTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :attributes, :scraped_attributes
  end
end
