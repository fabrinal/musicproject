require 'test_helper'

class PerformancesControllerTest < ActionController::TestCase
  setup do
    @performance = performances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:performances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create performance" do
    assert_difference('Performance.count') do
      post :create, performance: { performance_artist: @performance.performance_artist, performance_date: @performance.performance_date, performance_name: @performance.performance_name, performance_venue: @performance.performance_venue }
    end

    assert_redirected_to performance_path(assigns(:performance))
  end

  test "should show performance" do
    get :show, id: @performance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @performance
    assert_response :success
  end

  test "should update performance" do
    patch :update, id: @performance, performance: { performance_artist: @performance.performance_artist, performance_date: @performance.performance_date, performance_name: @performance.performance_name, performance_venue: @performance.performance_venue }
    assert_redirected_to performance_path(assigns(:performance))
  end

  test "should destroy performance" do
    assert_difference('Performance.count', -1) do
      delete :destroy, id: @performance
    end

    assert_redirected_to performances_path
  end
end
