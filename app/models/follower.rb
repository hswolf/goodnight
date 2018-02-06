class Follower < ActiveRecord::Base
  self.table_name = 'users'

  has_many :users, through: :user_followers
  has_many :sleeping_times, foreign_key: 'user_id'
end