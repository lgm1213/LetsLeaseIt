context.instance_eval do
	table_for(users, :sortable => true, :class => 'index_table') do
		column :id
		column :username
		column :title
		column :role
		column :created_at
		default_actions rescue nil
	end
end