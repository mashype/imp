class AddDutyToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :task_duty_id, :integer
    add_column :tasks, :task_duty_type, :string
  end
end
