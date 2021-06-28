require "test_helper"

class FeaturesControllerTest < ActionDispatch::IntegrationTest
  
include Devise::Test::IntegrationHelpers

	setup do
	    sign_in users(:two)
		@feature = features(:two)
		@plan = plans(:two)
		@user = users(:two)
	end

  test "should get index" do
    # sign_in users(:two)
    get user_plan_features_path(@user, @plan)
    # sign_in_as @user
    assert_response :success
  end

  test "should get new" do
    # sign_in users(:two)
    # byebug
    get new_user_plan_feature_path(@user, @plan)

    assert_response :success
  end

  test "should create feature" do
    
    assert_difference('Feature.count') do
      post user_plan_features_path(@user.id,@plan.id), params: { feature: { id: 3, name: 'beta', price: 12, code: 3, limit: 1233, plan_id: 2} }
    end

    assert_redirected_to user_plans_path(@user.id)
  end

  test "should get edit" do
    # sign_in users(:two)
    get edit_user_plan_feature_path(@user, @plan, @feature)
    assert_response :success
  end

  test "should update features" do
    # byebug
    patch user_plan_feature_path(@user,@plan,@feature), params: { feature: { id: @feature.id, name: @feature.name, price: @feature.price, code: @feature.code, limit: @feature.limit} }
    assert_redirected_to user_plans_path(@user)
  end

 #  test "should destroy feature" do
	#     assert_difference('Feature.count', -1) do
	#       delete user_plan_feature_path(@user, @plan, @feature)
	#     end

	#     assert_redirected_to user_subscriptions_path(@user)
	# end

end
