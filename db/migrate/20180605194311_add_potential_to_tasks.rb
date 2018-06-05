class AddPotentialToTasks < ActiveRecord::Migration
  def change
  	add_column :tasks, :population, :integer, :default => 0
  	add_column :tasks, :product, :string, :default => "N/A"
  	add_column :tasks, :sales, :boolean, :default => false
  end
end
