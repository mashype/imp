class CreateDispositions < ActiveRecord::Migration
  def change
    create_table :dispositions do |t|
    	t.string :status
      t.timestamps null: false
    end
  end
end
