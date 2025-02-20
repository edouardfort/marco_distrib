require "test_helper"

class UsersRoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_room = users_rooms(:one)
  end

  test "should get index" do
    get users_rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_users_room_url
    assert_response :success
  end

  test "should create users_room" do
    assert_difference("UsersRoom.count") do
      post users_rooms_url, params: { users_room: { room_number_id: @users_room.room_number_id, user_id_id: @users_room.user_id_id } }
    end

    assert_redirected_to users_room_url(UsersRoom.last)
  end

  test "should show users_room" do
    get users_room_url(@users_room)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_room_url(@users_room)
    assert_response :success
  end

  test "should update users_room" do
    patch users_room_url(@users_room), params: { users_room: { room_number_id: @users_room.room_number_id, user_id_id: @users_room.user_id_id } }
    assert_redirected_to users_room_url(@users_room)
  end

  test "should destroy users_room" do
    assert_difference("UsersRoom.count", -1) do
      delete users_room_url(@users_room)
    end

    assert_redirected_to users_rooms_url
  end
end
