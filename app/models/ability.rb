class Ability
  include CanCan::Ability

def initialize(user)
    user ||= User.new

    if user.super_admin?
      can :manage, :all
      can :read, ActiveAdmin::Page, name: "Dashboard"
    elsif user.property_manager?
      can :read, Building
      can :manage, Listing
      can :manage, Appointment
    elsif user.regional_manager?
      can :read, Building
      can :read, Listing
      can :read, Appointment
    elsif user.account_manager?
      can :manage, Building
      can :manage, Listing
      can :manage, Appointment
    else
      can :read, :all
    end

    # NOTE: Everyone can read the page of Permission Deny
    can :read, ActiveAdmin::Page, name: "Dashboard"
  end
end
