require 'test_helper'

class RoomlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roomlist = roomlists(:one)
  end

  test "should get index" do
    get roomlists_url
    assert_response :success
  end

  test "should get new" do
    get new_roomlist_url
    assert_response :success
  end

  test "should create roomlist" do
    assert_difference('Roomlist.count') do
      post roomlists_url, params: { roomlist: { abc: @roomlist.abc, cat: @roomlist.cat, dorm: @roomlist.dorm, room: @roomlist.room, status: @roomlist.status, studentid: @roomlist.studentid } }
    end

    assert_redirected_to roomlist_url(Roomlist.last)
  end

  test "should show roomlist" do
    get roomlist_url(@roomlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_roomlist_url(@roomlist)
    assert_response :success
  end

  test "should update roomlist" do
    patch roomlist_url(@roomlist), params: { roomlist: { abc: @roomlist.abc, cat: @roomlist.cat, dorm: @roomlist.dorm, room: @roomlist.room, status: @roomlist.status, studentid: @roomlist.studentid } }
    assert_redirected_to roomlist_url(@roomlist)
  end

  test "should destroy roomlist" do
    assert_difference('Roomlist.count', -1) do
      delete roomlist_url(@roomlist)
    end

    assert_redirected_to roomlists_url
  end
end
