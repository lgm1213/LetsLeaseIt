RentalDeposit.destroy_all
RentalDeposit.create!([
{ options: '1st Mo2 Security Deposit' },
{ options: "First Month's Rent" },
{ options: 'Cleaning Deposit' },
{ options: "Last Month's Rent" },
{ options: 'Non-Refundable' },
{ options: 'Painting' },
{ options: 'Pets' },
{ options: 'Refundable' },
{ options: 'Security Deposit' },
{ options: 'Utility Hook-Up' },
{ options: '1st Mo2 Security Deposit' },
{ options: "First Month's Rent" },
{ options: 'Cleaning Deposit' }])
p "Created #{RentalDeposit.count} RentalDeposit options"
