require 'test_helper'

class Admin::TimelinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_timelines_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_timelines_new_url
    assert_response :success
  end

end
