require 'test_helper'

class AllControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get all_index_url
    assert_response :success
  end

end
