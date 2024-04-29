require "test_helper"

class TrainBlocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @train_block = train_blocks(:one)
  end

  test "should get index" do
    get train_blocks_url
    assert_response :success
  end

  test "should get new" do
    get new_train_block_url
    assert_response :success
  end

  test "should create train_block" do
    assert_difference("TrainBlock.count") do
      post train_blocks_url, params: { train_block: { sequence_number: @train_block.sequence_number, title: @train_block.title, train_plan_id: @train_block.train_plan_id } }
    end

    assert_redirected_to train_block_url(TrainBlock.last)
  end

  test "should show train_block" do
    get train_block_url(@train_block)
    assert_response :success
  end

  test "should get edit" do
    get edit_train_block_url(@train_block)
    assert_response :success
  end

  test "should update train_block" do
    patch train_block_url(@train_block), params: { train_block: { sequence_number: @train_block.sequence_number, title: @train_block.title, train_plan_id: @train_block.train_plan_id } }
    assert_redirected_to train_block_url(@train_block)
  end

  test "should destroy train_block" do
    assert_difference("TrainBlock.count", -1) do
      delete train_block_url(@train_block)
    end

    assert_redirected_to train_blocks_url
  end
end
