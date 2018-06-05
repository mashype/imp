class ChangeDueDateTasks < ActiveRecord::Migration
  def change
  	remove_column :tasks, :due_date
  	add_column :tasks, :due_date, :date
  	change_column :tasks, :active, :boolean, default: true
  end
end
