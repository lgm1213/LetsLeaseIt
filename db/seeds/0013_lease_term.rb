LeaseTerm.destroy_all
LeaseTerm.create!([
{ options: '1 Year With Renewal Option' },
{ options: 'More Than 1 Year' },
{ options: '1 Year Only' },
{ options: 'Less Than 1 Year' },
{ options: 'Lease Option' },
{ options: 'Lease Purchase' },
{ options: 'Month To Month Lease' },
{ options: 'Tenant May Sublet' }])

p "created #{LeaseTerm.count} LeaseTerm options"