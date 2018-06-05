class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :add_1
      t.string :add_2
      t.string :city
      t.string :state
      t.string :zip
      t.belongs_to :provider, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
