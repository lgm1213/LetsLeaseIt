module AnalyticsHelper
  def buildings 
    buildings = Building.all if current_user.role != "regional_manager"
    buildings = Building.all.where(:company_id => current_user.company_id) if current_user.role == "regional_manager" rescue nil
    return buildings
  end
end
