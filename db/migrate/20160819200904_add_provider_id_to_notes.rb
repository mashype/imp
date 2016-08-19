class AddProviderIdToNotes < ActiveRecord::Migration
  def change
  	add_column :notes, :provider_id, :integer
  end
end
