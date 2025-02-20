class UsersRoom < ApplicationRecord
  belongs_to :user_id
  belongs_to :room_number
end
