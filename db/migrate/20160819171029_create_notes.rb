class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :content
      t.integer :user_id
      t.belongs_to :task, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
