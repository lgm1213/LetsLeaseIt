module CompaniesHelper 
  def rented_units_count(building)
    rented_count = 0
    building.appointments.each do |a|
      rented_count = rented_count + a.rented_units.where('spanend >= ? AND spanstart <= ?',Time.zone.now.beginning_of_month, Time.zone.now.end_of_month).where(leased: true).count
    end
    return rented_count
  end
  def appointments_count(building)
    appntmnt_count = building.appointments.where('end_time >= ? AND start_time <= ?',Time.zone.now.beginning_of_month, Time.zone.now.end_of_month).count
    return appntmnt_count
  end
end
