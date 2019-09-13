class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :building
      t.integer :room_num
      t.string :department
      t.string :description
      t.timestamps
    end
  end
end
