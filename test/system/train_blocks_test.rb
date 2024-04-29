require "application_system_test_case"

class TrainBlocksTest < ApplicationSystemTestCase
  setup do
    @train_block = train_blocks(:one)
  end

  test "visiting the index" do
    visit train_blocks_url
    assert_selector "h1", text: "Train blocks"
  end

  test "should create train block" do
    visit train_blocks_url
    click_on "New train block"

    fill_in "Sequence number", with: @train_block.sequence_number
    fill_in "Title", with: @train_block.title
    fill_in "Train plan", with: @train_block.train_plan_id
    click_on "Create Train block"

    assert_text "Train block was successfully created"
    click_on "Back"
  end

  test "should update Train block" do
    visit train_block_url(@train_block)
    click_on "Edit this train block", match: :first

    fill_in "Sequence number", with: @train_block.sequence_number
    fill_in "Title", with: @train_block.title
    fill_in "Train plan", with: @train_block.train_plan_id
    click_on "Update Train block"

    assert_text "Train block was successfully updated"
    click_on "Back"
  end

  test "should destroy Train block" do
    visit train_block_url(@train_block)
    click_on "Destroy this train block", match: :first

    assert_text "Train block was successfully destroyed"
  end
end
