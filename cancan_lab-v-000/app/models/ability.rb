class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user

    # users can do anything to their notes, includes :read, :create, :update
    can :manage, Note, { user_id: user.id }

    # readers can read notes
    can :read, Note do |note|
      # note.readers.map(&:id).include?(user.id) || (note.user_id == user.id)
      note.readers.include? user
    end
    # can :create, Note
    # can :update, Note, { user_id: user.id }
  end
end
