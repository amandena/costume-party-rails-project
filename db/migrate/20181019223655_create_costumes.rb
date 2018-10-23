class CreateCostumes < ActiveRecord::Migration[5.2]
  def change
    create_table :costumes do |t|
      t.string :name
      t.string :clothing_1
      t.string :clothing_2
      t.string :accessory_1
      t.string :accessory_2
      t.integer :cost
      t.integer :scare_rating
      t.integer :costume_party_id

      t.timestamps
    end
  end
end
