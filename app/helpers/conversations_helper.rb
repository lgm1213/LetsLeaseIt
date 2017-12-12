module ConversationsHelper
  def recipients_per_role
    user = User.where(role: ["property_manager" ,"leasing_consultant"]) if current_user.role=="consumer"
    user = User.where(role: "property_manager") if current_user.role=="realtor"
    user = User.all if current_user.role!="consumer" && current_user.role!="realtor"
    return user
  end
end