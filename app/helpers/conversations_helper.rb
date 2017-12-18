module ConversationsHelper
  def recipients_per_role
    leaseit_account_managers = User.where(role: "account_manager", company_id: 12)
    user = User.where(role: ["property_manager" ,"leasing_consultant"]) + leaseit_account_managers if current_user.role=="consumer"
    user = User.where(role: "property_manager") + leaseit_account_managers  if current_user.role=="realtor"
    user = (User.where(company_id:  current_user.company_id) + leaseit_account_managers).uniq if current_user.role!="consumer" && current_user.role!="realtor"
    return user
  end
end