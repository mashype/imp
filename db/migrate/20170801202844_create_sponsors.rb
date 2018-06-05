class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.integer :employees
      t.string :incumbent
      t.date :renewal
      t.integer :disposition_id

      t.timestamps null: false
    end
  end
end
