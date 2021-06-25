require "test_helper"

class InforControllerTest < ActionDispatch::IntegrationTest
  test "should get infor_get" do
    get infor_infor_get_url
    assert_response :success
  end
end
