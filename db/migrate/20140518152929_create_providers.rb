class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.text :location
      t.integer :points
      t.string :beacon_id
      t.string :icon_image

      t.timestamps
    end
  end
end
