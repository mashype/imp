class CreateSponsormatches < ActiveRecord::Migration
  def change
    create_table :sponsormatches do |t|
      t.integer :sponsor_id
      t.integer :provider_id
      t.integer :employees

      t.timestamps null: false
    end
  end
end
