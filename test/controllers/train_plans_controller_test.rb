require "test_helper"

class TrainPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @train_plan = train_plans(:one)
  end

  test "should get index" do
    get train_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_train_plan_url
    assert_response :success
  end

  test "should create train_plan" do
    assert_difference("TrainPlan.count") do
      post train_plans_url, params: { train_plan: { title: @train_plan.title } }
    end

    assert_redirected_to train_plan_url(TrainPlan.last)
  end

  test "should show train_plan" do
    get train_plan_url(@train_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_train_plan_url(@train_plan)
    assert_response :success
  end

  test "should update train_plan" do
    patch train_plan_url(@train_plan), params: { train_plan: { title: @train_plan.title } }
    assert_redirected_to train_plan_url(@train_plan)
  end

  test "should destroy train_plan" do
    assert_difference("TrainPlan.count", -1) do
      delete train_plan_url(@train_plan)
    end

    assert_redirected_to train_plans_url
  end
end
