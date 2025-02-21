require "application_system_test_case"

class ShoppingsTest < ApplicationSystemTestCase
  setup do
    @shopping = shoppings(:one)
  end

  test "visiting the index" do
    visit shoppings_url
    assert_selector "h1", text: "Shoppings"
  end

  test "should create shopping" do
    visit shoppings_url
    click_on "New shopping"

    fill_in "First name", with: @shopping.first_name
    fill_in "Last name", with: @shopping.last_name
    fill_in "Product", with: @shopping.product_id
    fill_in "Room", with: @shopping.room_id
    click_on "Create Shopping"

    assert_text "Shopping was successfully created"
    click_on "Back"
  end

  test "should update Shopping" do
    visit shopping_url(@shopping)
    click_on "Edit this shopping", match: :first

    fill_in "First name", with: @shopping.first_name
    fill_in "Last name", with: @shopping.last_name
    fill_in "Product", with: @shopping.product_id
    fill_in "Room", with: @shopping.room_id
    click_on "Update Shopping"

    assert_text "Shopping was successfully updated"
    click_on "Back"
  end

  test "should destroy Shopping" do
    visit shopping_url(@shopping)
    click_on "Destroy this shopping", match: :first

    assert_text "Shopping was successfully destroyed"
  end
end
