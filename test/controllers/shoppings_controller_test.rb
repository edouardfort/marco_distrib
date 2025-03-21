require "test_helper"

class ShoppingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shopping = shoppings(:one)
  end

  test "should get index" do
    get shoppings_url
    assert_response :success
  end

  test "should get new" do
    get new_shopping_url
    assert_response :success
  end

  test "should create shopping" do
    assert_difference("Shopping.count") do
      post shoppings_url, params: { shopping: { first_name: @shopping.first_name, last_name: @shopping.last_name, product_id: @shopping.product_id, room_id: @shopping.room_id } }
    end

    assert_redirected_to shopping_url(Shopping.last)
  end

  test "should show shopping" do
    get shopping_url(@shopping)
    assert_response :success
  end

  test "should get edit" do
    get edit_shopping_url(@shopping)
    assert_response :success
  end

  test "should update shopping" do
    patch shopping_url(@shopping), params: { shopping: { first_name: @shopping.first_name, last_name: @shopping.last_name, product_id: @shopping.product_id, room_id: @shopping.room_id } }
    assert_redirected_to shopping_url(@shopping)
  end

  test "should destroy shopping" do
    assert_difference("Shopping.count", -1) do
      delete shopping_url(@shopping)
    end

    assert_redirected_to shoppings_url
  end
end
