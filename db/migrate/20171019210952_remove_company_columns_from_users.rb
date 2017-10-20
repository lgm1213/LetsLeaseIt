class RemoveCompanyColumnsFromUsers < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :company_id, :integer
  	remove_column :users, :companies_id, :integer
  	remove_column :companies, :users_id
  end
end
