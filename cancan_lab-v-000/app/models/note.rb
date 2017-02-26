class Note < ActiveRecord::Base
  belongs_to :user
  has_many :viewers
  has_many :readers, through: :viewers, source: :user
  before_save :ensure_owner_can_read

  def visible_to
    self.viewers.map do |viewer|
      user = User.find_by(id: viewer.user_id)
      user.name
    end.join(", ")
  end

  def visible_to=(users)
    self.readers = users.split(", ").map do |name|
      User.find_by(name: name)
    end
  end

  private
  def ensure_owner_can_read
    if user && !readers.include?(user)
      readers << user
    end
  end
end
