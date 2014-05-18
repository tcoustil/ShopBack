class AddRefsToCheckInRecords < ActiveRecord::Migration
  def change
    add_reference :check_in_records, :user, index: true
    add_reference :check_in_records, :provider, index: true
  end
end
