class AddFieldsToTasks < ActiveRecord::Migration
  def change
  	add_column :tasks, :description, :string
  	add_column :tasks, :next_steps, :string
  end
end
