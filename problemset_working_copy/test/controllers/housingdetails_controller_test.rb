require 'test_helper'

class HousingdetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @housingdetail = housingdetails(:one)
  end

  test "should get index" do
    get housingdetails_url
    assert_response :success
  end

  test "should get new" do
    get new_housingdetail_url
    assert_response :success
  end

  test "should create housingdetail" do
    assert_difference('Housingdetail.count') do
      post housingdetails_url, params: { housingdetail: { category: @housingdetail.category, details: @housingdetail.details, rent: @housingdetail.rent, size: @housingdetail.size, versionid: @housingdetail.versionid } }
    end

    assert_redirected_to housingdetail_url(Housingdetail.last)
  end

  test "should show housingdetail" do
    get housingdetail_url(@housingdetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_housingdetail_url(@housingdetail)
    assert_response :success
  end

  test "should update housingdetail" do
    patch housingdetail_url(@housingdetail), params: { housingdetail: { category: @housingdetail.category, details: @housingdetail.details, rent: @housingdetail.rent, size: @housingdetail.size, versionid: @housingdetail.versionid } }
    assert_redirected_to housingdetail_url(@housingdetail)
  end

  test "should destroy housingdetail" do
    assert_difference('Housingdetail.count', -1) do
      delete housingdetail_url(@housingdetail)
    end

    assert_redirected_to housingdetails_url
  end
end
