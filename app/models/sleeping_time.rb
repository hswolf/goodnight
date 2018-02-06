class SleepingTime < ActiveRecord::Base
  belongs_to :user
  belongs_to :follower, foreign_key: 'user_id'
end