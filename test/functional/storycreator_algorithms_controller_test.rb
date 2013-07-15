require 'test_helper'

class StorycreatorAlgorithmsControllerTest < ActionController::TestCase
  setup do
    @storycreator_algorithm = storycreator_algorithms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storycreator_algorithms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storycreator_algorithm" do
    assert_difference('StorycreatorAlgorithm.count') do
      post :create, storycreator_algorithm: { description: @storycreator_algorithm.description, id: @storycreator_algorithm.id, method_name: @storycreator_algorithm.method_name, path: @storycreator_algorithm.path }
    end

    assert_redirected_to storycreator_algorithm_path(assigns(:storycreator_algorithm))
  end

  test "should show storycreator_algorithm" do
    get :show, id: @storycreator_algorithm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @storycreator_algorithm
    assert_response :success
  end

  test "should update storycreator_algorithm" do
    put :update, id: @storycreator_algorithm, storycreator_algorithm: { description: @storycreator_algorithm.description, id: @storycreator_algorithm.id, method_name: @storycreator_algorithm.method_name, path: @storycreator_algorithm.path }
    assert_redirected_to storycreator_algorithm_path(assigns(:storycreator_algorithm))
  end

  test "should destroy storycreator_algorithm" do
    assert_difference('StorycreatorAlgorithm.count', -1) do
      delete :destroy, id: @storycreator_algorithm
    end

    assert_redirected_to storycreator_algorithms_path
  end
end
