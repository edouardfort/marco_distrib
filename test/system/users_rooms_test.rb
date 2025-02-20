require "application_system_test_case"

class UsersRoomsTest < ApplicationSystemTestCase
  setup do
    @users_room = users_rooms(:one)
  end

  test "visiting the index" do
    visit users_rooms_url
    assert_selector "h1", text: "Users rooms"
  end

  test "should create users room" do
    visit users_rooms_url
    click_on "New users room"

    fill_in "Room number", with: @users_room.room_number_id
    fill_in "User id", with: @users_room.user_id_id
    click_on "Create Users room"

    assert_text "Users room was successfully created"
    click_on "Back"
  end

  test "should update Users room" do
    visit users_room_url(@users_room)
    click_on "Edit this users room", match: :first

    fill_in "Room number", with: @users_room.room_number_id
    fill_in "User id", with: @users_room.user_id_id
    click_on "Update Users room"

    assert_text "Users room was successfully updated"
    click_on "Back"
  end

  test "should destroy Users room" do
    visit users_room_url(@users_room)
    click_on "Destroy this users room", match: :first

    assert_text "Users room was successfully destroyed"
  end
end
