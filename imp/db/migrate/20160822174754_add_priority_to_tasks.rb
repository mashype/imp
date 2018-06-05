class AddPriorityToTasks < ActiveRecord::Migration
  def change
  	add_column :tasks, :priority, :integer
  	add_column :tasks, :due_date, :integer
  	add_column :tasks, :active, :boolean
  end
end
