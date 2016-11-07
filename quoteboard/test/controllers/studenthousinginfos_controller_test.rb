require 'test_helper'

class StudenthousinginfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studenthousinginfo = studenthousinginfos(:one)
  end

  test "should get index" do
    get studenthousinginfos_url
    assert_response :success
  end

  test "should get new" do
    get new_studenthousinginfo_url
    assert_response :success
  end

  test "should create studenthousinginfo" do
    assert_difference('Studenthousinginfo.count') do
      post studenthousinginfos_url, params: { studenthousinginfo: { category: @studenthousinginfo.category, detail: @studenthousinginfo.detail, rent: @studenthousinginfo.rent, roomsize: @studenthousinginfo.roomsize, version: @studenthousinginfo.version } }
    end

    assert_redirected_to studenthousinginfo_url(Studenthousinginfo.last)
  end

  test "should show studenthousinginfo" do
    get studenthousinginfo_url(@studenthousinginfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_studenthousinginfo_url(@studenthousinginfo)
    assert_response :success
  end

  test "should update studenthousinginfo" do
    patch studenthousinginfo_url(@studenthousinginfo), params: { studenthousinginfo: { category: @studenthousinginfo.category, detail: @studenthousinginfo.detail, rent: @studenthousinginfo.rent, roomsize: @studenthousinginfo.roomsize, version: @studenthousinginfo.version } }
    assert_redirected_to studenthousinginfo_url(@studenthousinginfo)
  end

  test "should destroy studenthousinginfo" do
    assert_difference('Studenthousinginfo.count', -1) do
      delete studenthousinginfo_url(@studenthousinginfo)
    end

    assert_redirected_to studenthousinginfos_url
  end
end
