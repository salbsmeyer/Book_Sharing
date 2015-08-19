class Friendship < ActiveRecord::Base
  belong_to :users

  def sender_id
    return User.find_by(:id => self.user_id)
  end

  def receiver_id
    return User.find_by(:id => self.user_id)
  end

end
