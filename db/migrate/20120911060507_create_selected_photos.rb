class CreateSelectedPhotos < ActiveRecord::Migration
  def change
    create_table :selected_photos do |t|
      t.string :title
      t.references :photo

      t.timestamps
    end
    add_index :selected_photos, :photo_id, :unique => false
  end
end
