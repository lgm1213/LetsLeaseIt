class CreateJoinTableCompanyUser < ActiveRecord::Migration[5.1]
  def change
	  create_join_table :companies, :users do |t|
	    t.index [:company_id, :user_id]
	  end
  end
end
