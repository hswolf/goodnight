class User < ActiveRecord::Base
  has_many :sleeping_times
  has_many :user_followers
  has_many :followers, through: :user_followers
end