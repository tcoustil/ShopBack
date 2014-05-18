class CreateCheckInRecords < ActiveRecord::Migration
  def change
    create_table :check_in_records do |t|

      t.timestamps
    end

  end
end
