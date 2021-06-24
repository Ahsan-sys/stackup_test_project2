require "test_helper"

class TrasectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trasections_index_url
    assert_response :success
  end
end
