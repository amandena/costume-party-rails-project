class CreateCostumeParties < ActiveRecord::Migration[5.2]
  def change
    create_table :costume_parties do |t|

      t.timestamps
    end
  end
end
