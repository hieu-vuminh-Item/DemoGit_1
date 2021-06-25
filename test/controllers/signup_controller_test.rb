require "test_helper"

class SignupControllerTest < ActionDispatch::IntegrationTest
  test "should get signup_get" do
    get signup_signup_get_url
    assert_response :success
  end
end
