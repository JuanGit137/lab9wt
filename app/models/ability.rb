# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :read, :all
    can :create, Message
    can :create, Chat
    can [:update, :destroy], Message, user_id: user.id


    if user.email&.downcase&.include?("admin") 
      can [:update, :destroy, :create], User
      can [:update, :destroy], Chat
    end
  end
end
  
