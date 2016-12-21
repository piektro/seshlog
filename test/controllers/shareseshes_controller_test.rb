require 'test_helper'

class ShareseshesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sharesesh = shareseshes(:one)
  end

  test "should get index" do
    get shareseshes_url
    assert_response :success
  end

  test "should get new" do
    get new_sharesesh_url
    assert_response :success
  end

  test "should create sharesesh" do
    assert_difference('Sharesesh.count') do
      post shareseshes_url, params: { sharesesh: { subject: @sharesesh.subject, user_id: @sharesesh.user_id, when: @sharesesh.when, where: @sharesesh.where, yoursesh: @sharesesh.yoursesh } }
    end

    assert_redirected_to sharesesh_url(Sharesesh.last)
  end

  test "should show sharesesh" do
    get sharesesh_url(@sharesesh)
    assert_response :success
  end

  test "should get edit" do
    get edit_sharesesh_url(@sharesesh)
    assert_response :success
  end

  test "should update sharesesh" do
    patch sharesesh_url(@sharesesh), params: { sharesesh: { subject: @sharesesh.subject, user_id: @sharesesh.user_id, when: @sharesesh.when, where: @sharesesh.where, yoursesh: @sharesesh.yoursesh } }
    assert_redirected_to sharesesh_url(@sharesesh)
  end

  test "should destroy sharesesh" do
    assert_difference('Sharesesh.count', -1) do
      delete sharesesh_url(@sharesesh)
    end

    assert_redirected_to shareseshes_url
  end
end
