class User < ActiveRecord::Base
  validates :user_name, :presence => true
  validates :password, :presence => true

  has_many :user_books
  has_many :friendships
  belongs_to :friendships

  def friendship
    return Friendship.find_by(:id => self.sender_id)
  end
end
