require 'test_helper'

class MicropostsControllerTest < ActionController::TestCase
  setup do
    @micropost = microposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropost" do
    assert_difference('Micropost.count') do
      post :create, micropost: { category_id: @micropost.category_id, content: @micropost.content, created: @micropost.created, eff_dt: @micropost.eff_dt, group_id: @micropost.group_id, latitude: @micropost.latitude, longitude: @micropost.longitude, place_name: @micropost.place_name, string: @micropost.string, user_id: @micropost.user_id, visible: @micropost.visible }
    end

    assert_redirected_to micropost_path(assigns(:micropost))
  end

  test "should show micropost" do
    get :show, id: @micropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micropost
    assert_response :success
  end

  test "should update micropost" do
    put :update, id: @micropost, micropost: { category_id: @micropost.category_id, content: @micropost.content, created: @micropost.created, eff_dt: @micropost.eff_dt, group_id: @micropost.group_id, latitude: @micropost.latitude, longitude: @micropost.longitude, place_name: @micropost.place_name, string: @micropost.string, user_id: @micropost.user_id, visible: @micropost.visible }
    assert_redirected_to micropost_path(assigns(:micropost))
  end

  test "should destroy micropost" do
    assert_difference('Micropost.count', -1) do
      delete :destroy, id: @micropost
    end

    assert_redirected_to microposts_path
  end
end
