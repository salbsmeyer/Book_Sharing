class Friendship < ActiveRecord::Base

def frienship
  return User.find_by(:id => self.user_id)
end

end
