class AddSponsorIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :sponsor_id, :integer
  end
end
