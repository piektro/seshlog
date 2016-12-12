require 'test_helper'

class PrivseshesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @privsesh = privseshes(:one)
  end

  test "should get index" do
    get privseshes_url
    assert_response :success
  end

  test "should get new" do
    get new_privsesh_url
    assert_response :success
  end

  test "should create privsesh" do
    assert_difference('Privsesh.count') do
      post privseshes_url, params: { privsesh: { activity: @privsesh.activity, date: @privsesh.date, location: @privsesh.location, note: @privsesh.note, rating: @privsesh.rating, user_id: @privsesh.user_id } }
    end

    assert_redirected_to privsesh_url(Privsesh.last)
  end

  test "should show privsesh" do
    get privsesh_url(@privsesh)
    assert_response :success
  end

  test "should get edit" do
    get edit_privsesh_url(@privsesh)
    assert_response :success
  end

  test "should update privsesh" do
    patch privsesh_url(@privsesh), params: { privsesh: { activity: @privsesh.activity, date: @privsesh.date, location: @privsesh.location, note: @privsesh.note, rating: @privsesh.rating, user_id: @privsesh.user_id } }
    assert_redirected_to privsesh_url(@privsesh)
  end

  test "should destroy privsesh" do
    assert_difference('Privsesh.count', -1) do
      delete privsesh_url(@privsesh)
    end

    assert_redirected_to privseshes_url
  end
end
