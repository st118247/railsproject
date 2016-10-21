require 'test_helper'

class AdminuserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adminuser_index_url
    assert_response :success
  end

  test "should get edit" do
    get adminuser_edit_url
    assert_response :success
  end

end
