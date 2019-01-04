class AddUserIdColumnToCostumes < ActiveRecord::Migration[5.2]
  def change
    add_column :costumes, :user_id, :integer
  end
end
