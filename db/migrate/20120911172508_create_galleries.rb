class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title
      t.references :photographer

      t.timestamps
    end
    add_index :galleries, :photographer_id, :unique => false
  end
end
