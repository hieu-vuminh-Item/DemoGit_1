require "test_helper"

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get login_get" do
    get login_login_get_url
    assert_response :success
  end
end
