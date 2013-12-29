require 'test_helper'

class WeeklyAddsControllerTest < ActionController::TestCase
  setup do
    @weekly_add = weekly_adds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weekly_adds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weekly_add" do
    assert_difference('WeeklyAdd.count') do
      post :create, weekly_add: { WeeklyAddID: @weekly_add.WeeklyAddID, WeeklyAddName: @weekly_add.WeeklyAddName, WeeklyAddType: @weekly_add.WeeklyAddType, WeeklyFavorite?: @weekly_add.WeeklyFavorite? }
    end

    assert_redirected_to weekly_add_path(assigns(:weekly_add))
  end

  test "should show weekly_add" do
    get :show, id: @weekly_add
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weekly_add
    assert_response :success
  end

  test "should update weekly_add" do
    put :update, id: @weekly_add, weekly_add: { WeeklyAddID: @weekly_add.WeeklyAddID, WeeklyAddName: @weekly_add.WeeklyAddName, WeeklyAddType: @weekly_add.WeeklyAddType, WeeklyFavorite?: @weekly_add.WeeklyFavorite? }
    assert_redirected_to weekly_add_path(assigns(:weekly_add))
  end

  test "should destroy weekly_add" do
    assert_difference('WeeklyAdd.count', -1) do
      delete :destroy, id: @weekly_add
    end

    assert_redirected_to weekly_adds_path
  end
end
