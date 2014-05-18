class CreateMalls < ActiveRecord::Migration
  def change
    create_table :malls do |t|
      t.string :name
      t.text :location
      t.string :icon_image
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
