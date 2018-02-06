class CreateSleepingTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :sleeping_times do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, foreign_key: true
    end
  end
end
