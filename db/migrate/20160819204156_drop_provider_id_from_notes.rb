class DropProviderIdFromNotes < ActiveRecord::Migration
  def change
  	remove_column :notes, :provider_id
  end
end
