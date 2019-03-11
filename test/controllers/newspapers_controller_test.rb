require 'test_helper'

class NewspapersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newspapers_index_url
    assert_response :success
  end

  test "should get show" do
    get newspapers_show_url
    assert_response :success
  end

  test "should get edit" do
    get newspapers_edit_url
    assert_response :success
  end

  test "should get update" do
    get newspapers_update_url
    assert_response :success
  end

end
