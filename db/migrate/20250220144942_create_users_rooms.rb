class CreateUsersRooms < ActiveRecord::Migration[8.0]
  def change
    create_table :users_rooms do |t|
      t.references :user_id, null: false, foreign_key: true
      t.references :room_number, null: false, foreign_key: true

      t.timestamps
    end
  end
end
