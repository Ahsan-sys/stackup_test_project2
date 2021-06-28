require "test_helper"

class SubscriptionsControllerTest < ActionDispatch::IntegrationTest
include Devise::Test::IntegrationHelpers

	setup do
		    sign_in users(:two)
			@feature = features(:two)
			@plan = plans(:two)
			@user = users(:two)
			@subscription = subscriptions(:two)
	end

	test "should get index" do
	    # sign_in users(:two)
	    get user_subscriptions_path(@user)
	    # sign_in_as @user
	    assert_response :success
	end

	test "should get new" do
	    # sign_in users(:two)
	    # byebug
	    get new_user_subscription_url(@user)

	    assert_response :success
	end

	test "should get edit" do
	    # sign_in users(:two)
	    get edit_user_subscription_path(@user, @subscription)
	    assert_response :success
	end

	test "should destroy subscription" do
	    assert_difference('Subscription.count', -1) do
	      delete user_subscription_path(@user, @subscription)
	    end

	    assert_redirected_to user_subscriptions_path(@user)
	end
  
end
