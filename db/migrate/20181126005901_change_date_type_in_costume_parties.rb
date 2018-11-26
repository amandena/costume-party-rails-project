class ChangeDateTypeInCostumeParties < ActiveRecord::Migration[5.2]
  def change
    change_column :costume_parties, :date, :string
  end
end
