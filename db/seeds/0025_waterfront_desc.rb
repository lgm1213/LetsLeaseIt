WaterfrontDesc.destroy_all
WaterfrontDesc.create!([
{ options: 'Bay Front' },
{ options: 'Canal Front' },
{ options: 'Creek Front' },
{ options: 'Canal Width 1-80 Feet' },
{ options: 'Canal Width 121 Feet or More' },
{ options: 'Canal Width 81-120 Feet' },
{ options: 'Fixed Bridge(S)' },
{ options: 'Intersecting Canals' },
{ options: 'Intracoastal Front' },
{ options: 'Lagoon Front' },
{ options: 'Lake Front' },
{ options: 'Lake Access' },
{ options: 'Mangrove Front' },
{ options: 'Navigable' },
{ options: 'No Fixed Bridges' },
{ options: 'Ocean Access' },
{ options: 'Ocean Front' },
{ options: 'One Fixed Bridge' },
{ options: 'Other Waterfront' },
{ options: 'Point Lot' },
{ options: 'Pond Front' },
{ options: 'Rip Rap' },
{ options: 'River Front' },
{ options: 'Seawall' }])
p "Created #{WaterfrontDesc.count} Waterfront options"