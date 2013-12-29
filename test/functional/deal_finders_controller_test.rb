require 'test_helper'

class DealFindersControllerTest < ActionController::TestCase
  setup do
    @deal_finder = deal_finders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deal_finders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deal_finder" do
    assert_difference('DealFinder.count') do
      post :create, deal_finder: { FinderFovorite?: @deal_finder.FinderFovorite?, FinderID: @deal_finder.FinderID, FinderName: @deal_finder.FinderName, FinderType: @deal_finder.FinderType }
    end

    assert_redirected_to deal_finder_path(assigns(:deal_finder))
  end

  test "should show deal_finder" do
    get :show, id: @deal_finder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deal_finder
    assert_response :success
  end

  test "should update deal_finder" do
    put :update, id: @deal_finder, deal_finder: { FinderFovorite?: @deal_finder.FinderFovorite?, FinderID: @deal_finder.FinderID, FinderName: @deal_finder.FinderName, FinderType: @deal_finder.FinderType }
    assert_redirected_to deal_finder_path(assigns(:deal_finder))
  end

  test "should destroy deal_finder" do
    assert_difference('DealFinder.count', -1) do
      delete :destroy, id: @deal_finder
    end

    assert_redirected_to deal_finders_path
  end
end
