class RemoveTaskDutyFromTasks < ActiveRecord::Migration
  def change
  	remove_column :tasks, :task_duty_id
	remove_column :tasks, :task_duty_type
	remove_column :tasks, :sponsor_id	
  end
end
