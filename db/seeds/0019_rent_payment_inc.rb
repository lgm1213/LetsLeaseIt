RentPaymentInc.destroy_all
RentPaymentInc.create!([
{ options: 'Association Fee' },
{ options: 'Cable Tv' },
{ options: 'Electricity' },
{ options: 'Exterminator' },
{ options: 'Gas' },
{ options: 'Hot Water' },
{ options: 'Pool Maintenance' },
{ options: 'Waste' },
{ options: 'Water/Sewer' },
{ options: 'Yard Maintenance' }])
p "create #{RentPaymentInc.count} RentPayInc options"
