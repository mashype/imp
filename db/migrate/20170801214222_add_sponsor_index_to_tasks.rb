class AddSponsorIndexToTasks < ActiveRecord::Migration
  def change
    add_index :tasks, :sponsor_id, unique: true
  end
end
