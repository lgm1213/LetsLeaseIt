class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here
    alias_action :create, :read, :update, :destroy, to: :crud
    case user
    when SuperAdmin
      can :manage, :all
    when Admin
      can :crud, User
      can :crud, Building
      can :crud, Listing 
      cannot :crud, User if user.role == "SuperAdmin"
    when AccountManager
      can :crud, Building
      can :crud, Listing
      cannot [:update, :destroy, :create], User
    when RegionalManager
      can :read, Building, if building.user_id == user.id.realty_group?
      end
      cannot :create, :update, :destroy, Building
      can :read, Listing, building_id: user.building_id 
      end
      cannot :create, :update, :destroy, Listing
    when PropertyManager
      can :create, Listing 
      can [:read, :update, :destroy], Listing, building_id: user.building_id
    end   
  end
end
