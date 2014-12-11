class CreateJoinings < ActiveRecord::Migration
  def change
    create_table :joinings do |t|
      t.references :activity, index: true
      t.references :attendee, index: true

      t.timestamps
    end
  end
end
