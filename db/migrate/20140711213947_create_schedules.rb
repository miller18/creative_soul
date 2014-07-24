class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.date :class_date
      t.time :class_time
      t.integer :class_duration
      t.string :student
      t.integer :user_id
      t.string :class_type

      t.timestamps
    end

    add_index :schedules, [:user_id, :created_at]
  end
end
