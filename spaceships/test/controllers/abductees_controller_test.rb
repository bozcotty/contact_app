require 'test_helper'

class AbducteesControllerTest < ActionController::TestCase
  setup do
    @abductee = abductees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abductees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abductee" do
    assert_difference('Abductee.count') do
      post :create, abductee: { name: @abductee.name }
    end

    assert_redirected_to abductee_path(assigns(:abductee))
  end

  test "should show abductee" do
    get :show, id: @abductee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @abductee
    assert_response :success
  end

  test "should update abductee" do
    patch :update, id: @abductee, abductee: { name: @abductee.name }
    assert_redirected_to abductee_path(assigns(:abductee))
  end

  test "should destroy abductee" do
    assert_difference('Abductee.count', -1) do
      delete :destroy, id: @abductee
    end

    assert_redirected_to abductees_path
  end
end
