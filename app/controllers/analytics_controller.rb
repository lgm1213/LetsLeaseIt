class AnalyticsController < ApplicationController
  before_action :set_company, only: [:index]

  def index
  
  end

  def show_graph
    building = Building.find(params[:id])
    appointment_hash, max_appointments, new_chart, line_chart_leases = {}, {}, {}, {} 
    appointments_month = Building.bar_chart_appointments(building).to_a
    appointment_hash = appointments_bar_graph(appointments_month)
    max_appointments = Building.max_appointments_bar(building)
    line_appointments = Building.line_chart_appointments(building)
    new_chart = appointments_line_chart(line_appointments)
    rented_units = Building.line_chart_leases(building)
    line_chart_leases = leases_line_chart(rented_units)
    render json: { max_appointments: max_appointments, bar_chart: appointment_hash, line_chart_appointments:new_chart, line_chart_leases:line_chart_leases }
  end

  def appointments_bar_graph(appointments)
    appointment_hash = {}
    week_days = ["Sunday", "Monday", "Tuesday", "Wednesday","Thursday","Friday","Saturday"]
    week_days.each{|a| appointment_hash[a] = 0}
    appointments.each do |a|
      appointment_hash.keys.each do |p|  
        appointment_hash[p] += a[1] if a.to_s.include? p
      end
    end
    return appointment_hash
  end

  def appointments_line_chart(appointments)
    line_chart, new_chart = {}, {}
    appointments.keys.each do |p|  line_chart[Date::MONTHNAMES[p]] = appointments[p] end
    Date::MONTHNAMES.each do |p| new_chart[p] = line_chart[p] end
    new_chart.keys.each do|k| new_chart[k]=0 if new_chart[k].blank? end
    new_chart.delete(nil)
    return new_chart
  end

  def leases_line_chart(rented_units)
    lease_chart, line_chart_leases = {}, {}
    rented_units.keys.each do |p|  lease_chart[Date::MONTHNAMES[p]] = rented_units[p] end
    Date::MONTHNAMES.each do |p| line_chart_leases[p] = lease_chart[p] end
    line_chart_leases.keys.each do|k| line_chart_leases[k]=0 if line_chart_leases[k].blank? end
    line_chart_leases.delete(nil)
    return line_chart_leases
  end

  private
    def set_company
      @company = Company.find(current_user.company_id)
    end
end
