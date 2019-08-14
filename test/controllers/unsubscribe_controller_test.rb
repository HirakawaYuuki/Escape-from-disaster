require 'test_helper'

class UnsubscribeControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get unsubscribe_top_url
    assert_response :success
  end

end
