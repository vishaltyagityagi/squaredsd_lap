class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new
    if user.manually?
      can :read, :all
    elsif user.admin?
      can :manage, :all
    else
      can :read, :all
    end
  end
end