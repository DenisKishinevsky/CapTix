class CreateEventSchedules < ActiveRecord::Migration
  def change
    create_table :event_schedules do |t|
      t.string :event
      t.date :event_date
      t.string :event_time
      t.string :monday
      t.string :tuesday
      t.string :wednsday
      t.string :thursday
      t.string :friday
      t.string :saturday
      t.string :sunday

      t.timestamps
    end
  end
end
