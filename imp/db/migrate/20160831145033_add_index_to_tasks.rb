class AddIndexToTasks < ActiveRecord::Migration
  def change
  	add_column :tasks, :disposition_id, :integer
  	add_index :tasks, :disposition_id
  end
end
