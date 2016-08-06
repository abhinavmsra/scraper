class CreateAttributes < ActiveRecord::Migration[5.0]
  def change
    create_table :attributes do |t|
      t.string :name, null: false
      t.string :value
      t.integer :scraped_tag_id, null: false

      t.timestamps
    end

    add_foreign_key :attributes, :scraped_tags
  end
end
