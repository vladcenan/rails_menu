require 'test_helper'

class MenuControllerTest < ActionDispatch::IntegrationTest
  test "should get food" do
    get menu_food_url
    assert_response :success
  end

  test "should get beverages" do
    get menu_beverages_url
    assert_response :success
  end

end
