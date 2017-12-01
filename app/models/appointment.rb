class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  
  has_many :companies, through: :listing
  has_many :rented_units, dependent: :destroy
  
  def self.appointment_notification
    from_time = (Time.now - 4.minutes).strftime("%Y-%m-%d %H:%M:00 +0000")
    to_time = Time.now.strftime("%Y-%m-%d %H:%M:00 +0000")
    appointments  = Appointment.where('end_time BETWEEN ? AND ?', from_time, to_time)
    user = User.find_by(role: "super_admin")
    if appointments.present?
      appointments.each do |a|
        building = a.listing.building
        conversation = user.send_message(building.property_manager, "Appointment for Building: #{building.development_name} is Completed on: #{a.end_time} by realtor: #{a.realtor_name} phone: #{a.realtor_phone}", "Appointment Complete Notification").conversation rescue nil
      end
    end
  end
end