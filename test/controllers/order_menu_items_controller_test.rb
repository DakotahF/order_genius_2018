require 'test_helper'

class OrderMenuItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_menu_item = order_menu_items(:one)
  end

  test "should get index" do
    get order_menu_items_url
    assert_response :success
  end

  test "should get new" do
    get new_order_menu_item_url
    assert_response :success
  end

  test "should create order_menu_item" do
    assert_difference('OrderMenuItem.count') do
      post order_menu_items_url, params: { order_menu_item: { menu_item_id: @order_menu_item.menu_item_id, order_id: @order_menu_item.order_id, quantity: @order_menu_item.quantity } }
    end

    assert_redirected_to order_menu_item_url(OrderMenuItem.last)
  end

  test "should show order_menu_item" do
    get order_menu_item_url(@order_menu_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_menu_item_url(@order_menu_item)
    assert_response :success
  end

  test "should update order_menu_item" do
    patch order_menu_item_url(@order_menu_item), params: { order_menu_item: { menu_item_id: @order_menu_item.menu_item_id, order_id: @order_menu_item.order_id, quantity: @order_menu_item.quantity } }
    assert_redirected_to order_menu_item_url(@order_menu_item)
  end

  test "should destroy order_menu_item" do
    assert_difference('OrderMenuItem.count', -1) do
      delete order_menu_item_url(@order_menu_item)
    end

    assert_redirected_to order_menu_items_url
  end
end
