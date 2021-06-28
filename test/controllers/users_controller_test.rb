require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  
  include Devise::Test::IntegrationHelpers

  test "should get index" do
    sign_in users(:two)
    get users_path
    # sign_in_as @user
    assert_response :success
  end

  test "should get new" do
    # sign_in users(:two)
    # byebug
    get new_user_path

    assert_response :success
  end


end
