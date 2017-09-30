module ApplicationHelper
	# to help assign which controller will be currently used
	def is_active_controller(controller_name, class_name = nil)
	  if params[:controller] == controller_name
	    class_name == nil ? "active" : class_name
	  else
	    nil
	  end
	end

  # to help make sure a current action is the active choice
	def is_active_action(action_name)
	  params[:action] == action_name ? "active" : nil
	end	
	
	# for state drop down menus
	def us_states
    [
      ['Alabama', 'AL'],
      ['Alaska', 'AK'],
      ['Arizona', 'AZ'],
      ['Arkansas', 'AR'],
      ['California', 'CA'],
      ['Colorado', 'CO'],
      ['Connecticut', 'CT'],
      ['Delaware', 'DE'],
      ['District of Columbia', 'DC'],
      ['Florida', 'FL'],
      ['Georgia', 'GA'],
      ['Hawaii', 'HI'],
      ['Idaho', 'ID'],
      ['Illinois', 'IL'],
      ['Indiana', 'IN'],
      ['Iowa', 'IA'],
      ['Kansas', 'KS'],
      ['Kentucky', 'KY'],
      ['Louisiana', 'LA'],
      ['Maine', 'ME'],
      ['Maryland', 'MD'],
      ['Massachusetts', 'MA'],
      ['Michigan', 'MI'],
      ['Minnesota', 'MN'],
      ['Mississippi', 'MS'],
      ['Missouri', 'MO'],
      ['Montana', 'MT'],
      ['Nebraska', 'NE'],
      ['Nevada', 'NV'],
      ['New Hampshire', 'NH'],
      ['New Jersey', 'NJ'],
      ['New Mexico', 'NM'],
      ['New York', 'NY'],
      ['North Carolina', 'NC'],
      ['North Dakota', 'ND'],
      ['Ohio', 'OH'],
      ['Oklahoma', 'OK'],
      ['Oregon', 'OR'],
      ['Pennsylvania', 'PA'],
      ['Puerto Rico', 'PR'],
      ['Rhode Island', 'RI'],
      ['South Carolina', 'SC'],
      ['South Dakota', 'SD'],
      ['Tennessee', 'TN'],
      ['Texas', 'TX'],
      ['Utah', 'UT'],
      ['Vermont', 'VT'],
      ['Virginia', 'VA'],
      ['Washington', 'WA'],
      ['West Virginia', 'WV'],
      ['Wisconsin', 'WI'],
      ['Wyoming', 'WY']
    ]
  end
  # helper method for select drop down of cities
  def sofl_cities
    [
    	['Atlantis', 'Atlantis' ],
			['Aventura', 'Aventura' ],
			['Bal Harbour', 'Bal Harbour' ],
			['Bay Harbor Islands', 'Bay Harbor Islands' ],
			['Belle Glade', 	'Belle Glade' ],
			['Biscayne Park', 'Biscayne Park' ],
			['Biscayne Gardens', 'Biscayne Gardens' ],
			['Boca Raton', 	'Boca Raton' ],
			['Briny Breezes', 'Briny Breezes' ],
			['Un-Incorporated Broward County', 'Un-Incorporated Broward County' ],
			['Canal Point', 'Canal Point' ],
			['Cloud Lake', 	'Cloud Lake' ],
			['Cocnut Creek', 'Cocnut Creek' ],
			['Cocnut Grove', 'Cocnut Grove' ],
			['Cooper City', 'Cooper City' ],
			['Coral Gables', 'Coral Gables' ],
			['Coral Springs', 'Coral Springs' ],
			['Crandon Park', 'Crandon Park' ],
			['Cutler Bay', 'Cutler Bay' ],
			['Unincorporated Dade County', 'Unincorporated Dade County' ],
			['Dania ', 'Dania ' ],
			['Davie', 'Davie' ],
			['Deerfield Beach', 'Deerfield Beach' ],
			['Delray Beach ', 'Delray Beach ' ],
			['Doral', 'Doral' ],
			['Eastern Shores', 'Eastern Shores' ],
			['El Portal', 'El Portal' ],
			['Fellsmere', 'Fellsmere' ],
			['Fisher Island', 'Fisher Island' ],
			['Florida City', 'Florida City' ],
			['Fort Lauderdale', 'Fort Lauderdale' ],
			['Fort Pierce', 	'Fort Pierce' ],
			['Glen Ridge', 'Glen Ridge' ],
			['Golden Beach', 'Golden Beach' ],
			['Goulds', 'Goulds' ],
			['Green Acres', 'Green Acres' ],
			['Gulfstream', 'Gulfstream' ],
			['Gulfview', 'Gulfview' ],
			['Hallandale', 'Hallandale' ],
			['Haverhill', 'Haverhill' ],
			['Hialeah', 'Hialeah' ],
			['Hiahleah Gardens', 'Hiahleah Gardens' ],
			['Highland Beach', 'Highland Beach' ],
			['Hillsboro Beach',  'Hillsboro Beach' ],
			['Hobo Sound',  'Hobo Sound' ],
			['Hollywood',  'Hollywood' ],
			['Homestead',  'Homestead' ],
			['Hutchinson Island', 'Hutchinson Island' ],
			['Hypoluxo', 'Hypoluxo' ],
			['Indian Creek', 'Indian Creek' ],
			['Indian River Shores', 	'Indian River Shores' ],
			['Indian Town', 	'Indian Town' ],
			['Islands/Caribbean', 'Islands/Caribbean' ],
			['Jenson Beach', 'Jenson Beach' ],
			['Juno Beach', 'Juno Beach' ],
			['Jupiter Inlet Colony', 'Jupiter Inlet Colony' ],
			['Jupiter', 'Jupiter' ],
			['Kendall', 'Kendall' ],
			['Key Biscayne', 'Key Biscayne' ],
			['Lake Clarke Shores', 'Lake Clarke Shores' ],
			['Lake Park', 'Lake Park' ],
			['Lake Worth', 	'Lake Worth' ],
			['Lakewood Park',  'Lakewood Park' ],
			['Lantana', 	'Lantana' ],
			['Lauderdale By The Sea', 	'Lauderdale By The Sea' ],
			['Lauderhill', 	'Lauderhill' ],
			['Lauderdale Lakes', 	'Lauderdale Lakes' ],
			['Lazy Lake', 	'Lazy Lake' ],
			['Lighthouse Point', 	'Lighthouse Point' ],
			['Loxahatchee', 	'Loxahatchee' ],
			['Manalapan',  'Manalapan' ],
			['Mangonia Park',  'Mangonia Park' ],
			['Margate', 	'Margate' ],
			['Medley', 	'Medley' ],
			['Miami', 	'Miami' ],
			['Miami Beach', 	'Miami Beach' ],
			['Miami Gardens', 	'Miami Gardens' ],
			['Miami Lakes', 	'Miami Lakes' ],
			['Miami Shores', 	'Miami Shores' ],
			['Miami Springs', 	'Miami Springs' ],
			['Miramar', 	'Miramar' ],
			['Naranja', 	'Naranja' ],
			['North Bay Village', 	'North Bay Village' ],
			['North Lauderdale', 	'North Lauderdale' ],
			['North Miami', 	'North Miami' ],
			['North Miami Beach', 	'North Miami Beach' ],
			['North Palm Beach', 	'North Palm Beach' ],
			['Oakland Park ', 	'Oakland Park ' ],
			['Ocean Ridge', 	'Ocean Ridge' ],
			['Opa-Locka', 	'Opa-Locka' ],
			['Other City Value  - Out of Area', 	'Other City Value  - Out of Area' ],
			['Other County - Not In USA', 	'Other County - Not In USA' ],
			['Other City - In the State of Florida', 	'Other City - In the State of Florida' ],
			['Other City - Keys/Islands/Caribbean', 	'Other City - Keys/Islands/Caribbean' ],
			['Other City - Not in the State of Florida', 	'Other City - Not in the State of Florida' ],
			['Pahokee', 	'Pahokee' ],
			['Palm Beach', 	'Palm Beach' ],
			['Un-Incoporated PB County ', 	'Un-Incoporated PB County ' ],
			['Palmetto Bay', 	'Palmetto Bay' ],
			['Palm Springs', 	'Palm Springs' ],
			['Parkland', 	'Parkland' ],
			['Palm Beach Gardens', 	'Palm Beach Gardens' ],
			['Palm Beach Shores', 	'Palm Beach Shores' ],
			['Pembroke Park', 	'Pembroke Park' ],
			['Pembroke Pines', 	'Pembroke Pines' ],
			['Pennsuco', 	'Pennsuco' ],
			['Perrine', 	'Perrine' ],
			['Pinecrest', 	'Pinecrest' ],
			['Plantation', 	'Plantation' ],
			['Pompano Beach', 	'Pompano Beach' ],
			['Port Salerno', 	'Port Salerno' ],
			['Port St. Lucie', 	'Port St. Lucie' ],
			['Riviera Beach', 	'Riviera Beach' ],
			['Roseland', 	'Roseland' ],
			['Royal Palm Beach', 	'Royal Palm Beach' ],
			['Sea Ranch Lakes', 	'Sea Ranch Lakes' ],
			['Sebastian', 	'Sebastian' ],
			['Sewalls Point', 	'Sewalls Point' ],
			['Singer Island', 	'Singer Island' ],
			['South Miami', 	'South Miami' ],
			['South Bay', 	'South Bay' ],
			['South Palm Beach', 	'South Palm Beach' ],
			['Saint Lucie West ', 	'Saint Lucie West ' ],
			['Stuart', 	'Stuart' ],
			['Sunny Isles Beach', 	'Sunny Isles Beach' ],
			['Sunrise', 	'Sunrise' ],
			['Surfside', 	'Surfside' ],
			['Sweetwater', 	'Sweetwater' ],
			['Southwest Ranches', 	'Southwest Ranches' ],
			['Tamarac', 	'Tamarac' ],
			['Tequesta', 	'Tequesta' ],
			['Tropic', 	'Tropic' ],
			['Vergo Beach', 	'Vergo Beach' ],
			['Virginia Key', 	'Virginia Key' ],
			['Virginia Gardbes', 	'Virginia Gardbes' ],
			['Village of Golf', 	'Village of Golf' ],
			['Wabasso', 	'Wabasso' ],
			['Wellington', 	'Wellington' ],
			['Weston', 	'Weston' ],
			['Wilton Manors', 	'Wilton Manors' ],
			['West Miami', 	'West Miami' ],
			['Williams Island', 	'Williams Island' ],
			['Winter Beach', 	'Winter Beach' ],
			['West Palm Beach', 	'West Palm Beach' ],
			['West Park ', 	'West Park ' ]
  	]
  end

  #helper method for select drop down of counties
  def sofl_counties
  	[
  		['Broward County', 'Broward County'],
  		['Miami-Dade County', 'Miami-Dade County'],
  		['West Palm Beach County', 'West Palm Beach County'],
  		['Other County', 'Other County']
    ]
  end

  # helper method for select drop down of compass directions
  def compass_directions
  	[
  		['N','N'],
  		['NE', 'NE'],
  		['E', 'E'],
  		['SE', 'SE'],
  		['S', 'S'],
  		['SW', 'SW'],
  		['W', 'W'],
  		['NW', 'NW'],
  	]
  end

  def rentperperiod
  	[
  		['Week', 'Week'],
  		['Month', 'Month'],
  	  ['Year', 'Year']
    ]
  end
  
  def yes_or_no
  	[
  		['Yes', true],
  		['No', false]
  	]
  end

  def yearbuiltdescription
  	[
  		['New Sale', 'New Sale'],
  		['Resale', 'Resale'],
  		['Under Construction', 'Under Construction'],
  		['Unknown', 'Unknown']
  	]
  end

  def type_of_property
  	[
  		['Apartment', 'Apartment'],
      ['Condo', 'Condo'],
      ['Efficiency', 'Efficiency'],
      ['Multifamily', 'Multifamily'],
      ['Single', 'Single'],
      ['Townhouse', 'Townhouse'],
      ['Villa', 'Villa']
  	]
  end

  def style
  	[
  		['C23-Condo/Time', 'C23-Condo/Timeshare'],
  		['R60-Residential-Annual', 'R60-Residential-Annual'],
  		['R61-Residential-Seasonal', 'R61-Residential-Seasonal'],
  		['R62-Condo/Co-OP/Annual', 'R62-Condo/Co-OP/Annual'],
  		['R63-Condo/Co-Seasonal', 'R63-Condo/Co-Seasonal'],
  		['R64-Apartments-Annual', 'R64-Apartments-Annual'],
  		['R65-Apartments-Seasonal', 'R65-Apartments-Seasonal'],
  		['R66-Duplex/Tri/Quad-Annual', 'R66-Duplex/Tri/Quad-Annual'],
  		['R67-Duplex/Tri/Quad-Seasonal', 'R67-Duplex/Tri/Quad-Annual'],
  		['R70-Townhouse/Villa-Annual', 'R70-Townhouse/Villa-Annual'],
  		['R71-Townhouse/Villa-Seasonal', 'R71-Townhouse/Villa-Seasonal'],
  		['R72-Eff/Std/Hotel Room(Annual)', 'R72-Eff/Std/Hotl Room(Annual)'],
  		['R73-Eff/Std/Hotel Room(Seasonal)', 'R73-Eff/Std/Hotl Room(Seasonal)'],
  		['R80-Residential-Offseason', 'R80-Residential-Offseason'],
  		['R81-Condo/Co-Op/Offseason', 'R81-Condo/Co-Op/Offseason'],
  		['R82-Apartments-Offseason', 'R82-Apartments-Offseason'],
  		['R83-Duplex/Tri/Quad-Offseason', 'R83-Duplex/Tri/Quad-Offseason'],
  		['R84-Townhouse/Villa-Offseason', 'R84-Townhouse/Villa-Offseason']
  	]
  end

  def carport_description
  	[
  		['Attached','Attached'],
  		['Detached', 'Detached']
  	]
  end

  def add_park_info
  	[
  		['1 Space', '1 Space'],
  		['2 Spaces', '2 Spaces'],
  		['Assigned Parking', 'Assigned Parking'],
  		['Circular Drive', 'Circular Drive'],
  		['Covered Parking', 'Covered Parking'],
  		['Detached', 'Detached'],
  		['Guest Parking', 'Guest Parking'],
  		['Not Assigned', 'Not Assigned'],
  		['Parking Garage', 'Parking Garage'],
  		['Slab/Strip', 'Slab/Strip'],
  		['Street Parking', 'Street Parking'],
  		['Valet Parking', 'Valet Parking']
  	]
  end

  def lot_description
  [
  	['Less Than 1/4 Acre Lot','Less Than 1/4 Acre Lot' ],
  	['1 to Less Than 2 Acre Lot', '1 to Less Than 2 Acre Lot'],
  	['1/2 to Less Than 3/4 Acre Lot','1/2 to Less Than 3/4 Acre Lot'],
  	['1/4 to Less Than 1/2 Acre Lot','1/4 to Less Than 1/2 Acre Lot'],
  	['10 or More Acre Lot','10 or More Acre Lot'],
  	['2 to Less than 3 Acre Lot','2 to Less than 3 Acre Lot'],
  	['3 to Less than 4 Acre Lot','3 to Less than 4 Acre Lot'],
  	['3/4 to Less than 1 Acre Lot','3/4 to Less than 1 Acre Lot'],
  	['4 to Less Than 5 Acre Lot', '4 to Less Than 5 Acre Lot'],
  	['5 to Less than 10 Acre Lot','5 to Less than 10 Acre Lot'],
  	['Corner Lot', 'Corner Lot'],
  	['Cul-De-Sac Lot', 'Cul-De-Sac Lot'],
  	['East of US-1', 'East of US-1'],
  	['Flood Zone Lot', 'Flood Zone Lot'],
  	['Golf Course Lot', 'Golf Course Lot'],
  	['Interior Lot', 'Interior Lot'],
  	['Irregular Lot', 'Irregular Lot'],
  	['Other Lot Description', 'Other Lot Description'],
  	['Oversized Lot', 'Oversized Lot'],
  	['Regular Lot', 'Regular Lot'],
  	['West of US-1', 'West of US-1'],
  	['Zero Lot Line Lot', 'Zero Lot Line Lot']
  ]  	
  end

  def waterfront_description
  	[
  		['Bay Front', 'Bay Front'],
  		['Canal Front', 'Canal Front'],
  		['Creek Front', 'Creek Front'],
  		['Canal Width 1-80 Feet', 'Canal Width 1-80 Feet'],
  		['Canal Width 121 Feet or More', 'Canal Width 121 Feet or More'],
  		['Canal Width 81-120 Feet', 'Canal Width 81-120 Feet'],
  		['Fixed Bridge(S)', 'Fixed Bridge(S)'],
  		['Intersecting Canals', 'Intersecting Canals'],
  		['Intracoastal Front', 'Intercoastal Front'],
  		['Lagoon Front', 'Lagoon Front'],
  		['Lake Front', 'Lake Front'],
  		['Lake Access', 'Lake Access'],
  		['Mangrove Front', 'Mangrove Front'],
  		['Navigable', 'Navigable'],
  		['No Fixed Bridges', 'No Fixed Bridges'],
  		['Ocean Access', 'Ocean Access'],
  		['Ocean Front', 'Ocean Front'],
  		['One Fixed Bridge', 'One Fixed Bridge'],
  		['Other Waterfront', 'Other Waterfront'],
  		['Point Lot','Point Lot'],
  		['Pond Front', 'Pond Front'],
  		['Rip Rap', 'Rip Rap'],
  		['River Front','River Front']
  	]
  end

	def park_restrict
		[
			['Limited Number Of Vehicles', 'Limited Number of Videos'],
			['No Motorcycle', 'No Motorcycle'],
			['No Rv/Boats', 'No Rv/Boats'],
			['No Trucks/Trailers','No Trucks/Trailers']
		]
	end

	def rental_status
		[
			['Annual', 'Annual'],
			['Not Available', 'Not Available'],
			['Offseason', 'Offseason'],
			['Rented', 'Rented'],
			['Seasonal', 'Seasonal']
		]
	end

	def sewer_description
		[
			['Both Septic and Sewer', 'Both Septic and Sewer'],
			['Septic Tank', 'Septic Tank'],
			['Sewer', 'Sewer']
		]
	end

	def water_source
		[
			['Lake Worth Drain', 'Lake Worth Drain'],
			['Municipal', 'Municipal'],
			['Other', 'Other'],
			['Well Water', 'Well Water']
		]
		
	end

	def hopa
		[
			['No HOPA', 'No HOPA'],
			['Unverified', 'Unverified'],
			['Verified', 'Verified']
		]
	end

	def listing_type
		[
			['Exclusive Agency', 'Exclusive Ageny'],
			['Exclusive with exceptions', 'Exclusive with exceptions'],
			['Exclusive Right', 'Exclusive Right'],
			['Limited Representation','Limited Representation'],
			['Limited Service', 'Limited Service']
		]
		
	end

 def occupancy_info
 	[
 		['Annual','Annual'],
 		['Monthly','Monthly'],
 		['Offseason', 'Offseason'],
 		['Seasonal', 'Seasonal'],
 		['Vacant', 'Vacant']
 	]
 end

 def lender_approval
 	[
 		['Approved', true],
 		['Unapproved', false]
 	]
 end

 def renewal_commision
 	[
 		['2+ Year Commission', '2+ Year Commission'],
 		['Less Commission On Renewal', 'Less Commission On Renewal'],
 		['None/Non-Applicable', 'None/Non-Applicable'],
 		['Renewable Commission', 'Renewable Commission']
 	]
 end

 def faces
   [
    ['North', 'North'],
    ['Northeast', 'Northeast'],
    ['East', 'East'],
    ['Southeast','Southeast'],
    ['South', 'South'],
    ['Southwest', 'Southwest'],
    ['West', 'West'],
    ['Northwest', 'Northwest']
   ]
 end

 def furnished
  [
    ['Furnished', 'Furnished'],
    ['Partially Furnished', 'Partially Furnished'],
    ['Furniture For Sale', 'Furniture For Sale'],
    ['Furniture Negotiable', 'Furniture Negotiable'],
    ['Unfurnished', 'Unfurnished']
  ]   
 end

 def view
  [
    ['Bay', 'Bay'],
    ['Canal', 'Canal'],
    ['Club Area View' 'Club Area View'],
    ['Garden View', 'Garden View'],
    ['Golf View', 'Golf View'],
    ['Intracoastal View', 'Intracoastal View'],
    ['Lagoon', 'Lagoon'],
    ['Lake', 'Lake'],
    ['None', 'None'],
    ['Ocean View', 'Ocean View'],
    ['Pool Area View', 'Pool Area View'],
    ['River', 'River'],
    ['Water View', 'Water View']
  ]
 end

 






end
