require 'test_helper'

class AitControllerTest < ActionDispatch::IntegrationTest
  test "should get dormroom" do
    get ait_dormroom_url
    assert_response :success
  end

end
