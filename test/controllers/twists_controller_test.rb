require 'test_helper'

class TwistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twist = twists(:one)
  end

  test "should get index" do
    get twists_url
    assert_response :success
  end

  test "should get new" do
    get new_twist_url
    assert_response :success
  end

  test "should create twist" do
    assert_difference('Twist.count') do
      post twists_url, params: { twist: { twist: @twist.twist } }
    end

    assert_redirected_to twist_url(Twist.last)
  end

  test "should show twist" do
    get twist_url(@twist)
    assert_response :success
  end

  test "should get edit" do
    get edit_twist_url(@twist)
    assert_response :success
  end

  test "should update twist" do
    patch twist_url(@twist), params: { twist: { twist: @twist.twist } }
    assert_redirected_to twist_url(@twist)
  end

  test "should destroy twist" do
    assert_difference('Twist.count', -1) do
      delete twist_url(@twist)
    end

    assert_redirected_to twists_url
  end
end
