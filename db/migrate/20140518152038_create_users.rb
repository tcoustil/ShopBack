class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :display_name
      t.string :pic
      t.integer :points

      t.timestamps
    end
  end
end
