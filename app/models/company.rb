class Company < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :buildings
  has_many :listings, through: :buildings, dependent: :destroy
  has_many :appointments, through: :listings, dependent: :destroy

  def self.building_analytics_data(buildings,to,from)
    rented_units = []
    appointments= []
    buildings.each do |b|
    appointments << b.appointments.where('end_time >= ? AND start_time <= ?',from, to).count
      rented_count = 0
      b.appointments.each do |a|
        rented_count = rented_count + a.rented_units.where('spanend >= ? AND spanstart <= ?',from, to).where(leased: true).count
      end
      rented_units << rented_count
    end
    return appointments, rented_units  
  end
end
