Approval.destroy_all
Approval.create!([
{ options: '1-2 Weeks Approval' },
{ options: '3-4 Weeks Approval' },
{ options: 'Application Fee Required' },
{ options: 'Association Approval Required' },
{ options: 'Credit Report Required' },
{ options: 'Personal Interview Required' },
{ options: 'No Approvals' },
{ options: 'Other Approvals' },
{ options: 'Rapid Approval' },
{ options: 'Tenant Pays Screening/Appl Fees' },
{ options: 'Tenant Screening' },
{ options: 'Unknown' }])

p "Created #{Approval.count} Approval options"
