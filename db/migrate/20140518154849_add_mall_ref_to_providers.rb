class AddMallRefToProviders < ActiveRecord::Migration
  def change
    add_reference :providers, :mall, index: true
  end
end
