class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
