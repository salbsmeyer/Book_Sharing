class Friendship < ActiveRecord::Base

has_many :users

def user
  return User.find_by(:id => self.user_id)
end

end
