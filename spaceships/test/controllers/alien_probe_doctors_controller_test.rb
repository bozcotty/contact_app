require 'test_helper'

class AlienProbeDoctorsControllerTest < ActionController::TestCase
  setup do
    @alien_probe_doctor = alien_probe_doctors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alien_probe_doctors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alien_probe_doctor" do
    assert_difference('AlienProbeDoctor.count') do
      post :create, alien_probe_doctor: { name: @alien_probe_doctor.name }
    end

    assert_redirected_to alien_probe_doctor_path(assigns(:alien_probe_doctor))
  end

  test "should show alien_probe_doctor" do
    get :show, id: @alien_probe_doctor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alien_probe_doctor
    assert_response :success
  end

  test "should update alien_probe_doctor" do
    patch :update, id: @alien_probe_doctor, alien_probe_doctor: { name: @alien_probe_doctor.name }
    assert_redirected_to alien_probe_doctor_path(assigns(:alien_probe_doctor))
  end

  test "should destroy alien_probe_doctor" do
    assert_difference('AlienProbeDoctor.count', -1) do
      delete :destroy, id: @alien_probe_doctor
    end

    assert_redirected_to alien_probe_doctors_path
  end
end
