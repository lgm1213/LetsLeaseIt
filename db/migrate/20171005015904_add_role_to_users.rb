class AddRoleToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :role, :integer, null: false, limit: 1, default: 0
  end
end
