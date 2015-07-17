class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :guest_id
      t.integer :room_id

      t.timestamps null: false
    end
  end
end