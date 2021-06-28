require "test_helper"

class TrasectionsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get index" do
    # sign_in users(:two)
    get user_subscription_trasections_path(:two, 2)
    # sign_in_as @user
    assert_response :success
  end

  test "should get new" do
    # sign_in users(:two)
    # byebug
    get new_user_subscription_trasection_path(:two,2)

    assert_response :success
  end

  # test "should get edit" do
  #   # sign_in users(:two)
  #   get edit_user_subscription_trasection_path(:two, 2, 2)
  #   assert_response :success
  # end

end
