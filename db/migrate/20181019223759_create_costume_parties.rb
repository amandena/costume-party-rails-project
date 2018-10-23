class CreateCostumeParties < ActiveRecord::Migration[5.2]
  def change
    create_table :costume_parties do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
