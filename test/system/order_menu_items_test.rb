require "application_system_test_case"

class OrderMenuItemsTest < ApplicationSystemTestCase
  setup do
    @order_menu_item = order_menu_items(:one)
  end

  test "visiting the index" do
    visit order_menu_items_url
    assert_selector "h1", text: "Order Menu Items"
  end

  test "creating a Order menu item" do
    visit order_menu_items_url
    click_on "New Order Menu Item"

    fill_in "Menu Item", with: @order_menu_item.menu_item_id
    fill_in "Order", with: @order_menu_item.order_id
    fill_in "Quantity", with: @order_menu_item.quantity
    click_on "Create Order menu item"

    assert_text "Order menu item was successfully created"
    click_on "Back"
  end

  test "updating a Order menu item" do
    visit order_menu_items_url
    click_on "Edit", match: :first

    fill_in "Menu Item", with: @order_menu_item.menu_item_id
    fill_in "Order", with: @order_menu_item.order_id
    fill_in "Quantity", with: @order_menu_item.quantity
    click_on "Update Order menu item"

    assert_text "Order menu item was successfully updated"
    click_on "Back"
  end

  test "destroying a Order menu item" do
    visit order_menu_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order menu item was successfully destroyed"
  end
end
