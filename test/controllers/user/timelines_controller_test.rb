require 'test_helper'

class User::TimelinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_timelines_index_url
    assert_response :success
  end

  test "should get show" do
    get user_timelines_show_url
    assert_response :success
  end

  test "should get new" do
    get user_timelines_new_url
    assert_response :success
  end

end
