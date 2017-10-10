ActiveAdminRole.configure do |config|
  # [Required:Hash]
  # == Role | default: { guest: 0, support: 1, staff: 2, manager: 3, admin: 99 }
  config.roles = {property_manager: 1, regional_manager: 2, account_manager: 3, admin: 99, super_admin: 100}

  # [Optional:Array]
  # == Special roles which don't need to manage on database
  config.super_user_roles = [:super_admin]
  # config.guest_user_roles = [:guest]

  # [Optional:String]
  # == User class name | default: 'AdminUser'
  config.user_class_name = "User"

  # [Optional:Symbol]
  # == Default permission | default: :cannot
  config.default_state = :cannot
end
