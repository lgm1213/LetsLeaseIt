class RemoveCompanyColumnsFromUsers < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :companies_id, :integer
  end
end
