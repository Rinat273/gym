require "application_system_test_case"

class TrainPlansTest < ApplicationSystemTestCase
  setup do
    @train_plan = train_plans(:one)
  end

  test "visiting the index" do
    visit train_plans_url
    assert_selector "h1", text: "Train plans"
  end

  test "should create train plan" do
    visit train_plans_url
    click_on "New train plan"

    fill_in "Title", with: @train_plan.title
    click_on "Create Train plan"

    assert_text "Train plan was successfully created"
    click_on "Back"
  end

  test "should update Train plan" do
    visit train_plan_url(@train_plan)
    click_on "Edit this train plan", match: :first

    fill_in "Title", with: @train_plan.title
    click_on "Update Train plan"

    assert_text "Train plan was successfully updated"
    click_on "Back"
  end

  test "should destroy Train plan" do
    visit train_plan_url(@train_plan)
    click_on "Destroy this train plan", match: :first

    assert_text "Train plan was successfully destroyed"
  end
end
