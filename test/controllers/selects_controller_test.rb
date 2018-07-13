require 'test_helper'

class SelectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get selects_index_url
    assert_response :success
  end

end
