class AddIndexToCheckInRecords < ActiveRecord::Migration
  def change
    add_index :check_in_records, [:user_id, :provider_id], name: "index_check_in_records_on_user_id_and_provider_id"
  end
end
