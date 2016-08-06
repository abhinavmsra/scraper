class CreateScrapedTags < ActiveRecord::Migration[5.0]
  def change
    create_table :scraped_tags do |t|
      t.string :name, null: false
      t.integer :page_id, null: false

      t.timestamps
    end

    add_foreign_key :scraped_tags, :pages
  end
end
