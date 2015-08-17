class User < ActiveRecord::Base
  validates :user_name, :presence => true
  validates :password, :presence => true
  has_many :user_books
  has_many :friendships
  belongs_to :friendships
end
