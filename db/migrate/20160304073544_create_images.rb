class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :imageable, index: true, polymorphic: true
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps null: false
      t.datetime :deleted_at
    end
  end
end
