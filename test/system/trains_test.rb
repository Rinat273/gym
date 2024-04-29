require "application_system_test_case"

class TrainsTest < ApplicationSystemTestCase
  setup do
    @train = trains(:one)
  end

  test "visiting the index" do
    visit trains_url
    assert_selector "h1", text: "Trains"
  end

  test "should create train" do
    visit trains_url
    click_on "New train"

    fill_in "Train plan", with: @train.train_plan_id
    click_on "Create Train"

    assert_text "Train was successfully created"
    click_on "Back"
  end

  test "should update Train" do
    visit train_url(@train)
    click_on "Edit this train", match: :first

    fill_in "Train plan", with: @train.train_plan_id
    click_on "Update Train"

    assert_text "Train was successfully updated"
    click_on "Back"
  end

  test "should destroy Train" do
    visit train_url(@train)
    click_on "Destroy this train", match: :first

    assert_text "Train was successfully destroyed"
  end
end
