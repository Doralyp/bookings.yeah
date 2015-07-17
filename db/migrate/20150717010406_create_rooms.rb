class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.decimal :rate
      t.integer :number
      t.integer :hotel_id

      t.timestamps null: false
    end
  end
end
