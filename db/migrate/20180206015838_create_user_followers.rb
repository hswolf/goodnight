class CreateUserFollowers < ActiveRecord::Migration[5.1]
  def change
    create_table :user_followers do |t|
      # default index for adding reference will be true
      t.references :user, foreign_key: true
      t.references :follower, foreign_key: { to_table: :users }
    end
  end
end
