context.instance_eval do
	table_for(buildings, :sortable => true, :class => 'index_table') do
		column :id
		column :development_name
		column :city
		column :user_id
		default_actions rescue nil
	end
end
