require "test_helper"

class UrlsControllerTest < ActionDispatch::IntegrationTest
  test "should get read" do
    get urls_read_url
    assert_response :success
  end
end
