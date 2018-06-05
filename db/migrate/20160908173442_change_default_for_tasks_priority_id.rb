class ChangeDefaultForTasksPriorityId < ActiveRecord::Migration
  def change
  	change_column :tasks, :priority_id, :integer, :default => 2
  end
end
