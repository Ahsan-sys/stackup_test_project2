require "test_helper"

class PlansControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    sign_in users(:two)
    @plan = plans(:two)
    @user = users(:two)
    
  end
  
  test "should get index" do

    get plans_index_url

    assert_response :success
  end


  test "should get new" do

    get new_user_plan_url(@user)

    assert_response :success
  end


  test "should create plan" do
    plan = Plan.new
    assert_difference('Plan.count') do
      post user_plans_path(@user), params: { plan: { id: 2 ,name: "Fight", fee: 500} }
    end

    assert_redirected_to user_plan_path(@user.id, plan.id)
  end


  test "should get edit" do

    get edit_user_plan_path(@user, @plan)
    assert_response :success
  end


  test "should update plan" do
    
    patch user_plan_path(@user,@plan), params: { plan: { name: @plan.name, fee: @plan.fee} }
    assert_redirected_to user_plans_path(@user)
  end


  test "should destroy plan" do
    assert_difference('Plan.count', -1) do
      delete user_plan_path(@user, @plan)
    end

    assert_redirected_to user_plans_path(@user)
  end


end
