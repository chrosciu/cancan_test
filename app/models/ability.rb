class Ability
  include CanCan::Ability

  def initialize(user = nil)
    can :manage, Book, authors: { id: 0 }
  end

end

