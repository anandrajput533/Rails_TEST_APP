class CreateProfiles < ActiveRecord::Migration[7.2]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :city
      t.string :state
      t.string :country
      t.string :phone
      t.string :gender
      
      t.timestamps
    end
  end
end