require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { city: @patient.city, date_of_birth: @patient.date_of_birth, email: @patient.email, house_number: @patient.house_number, name: @patient.name, phone: @patient.phone, street: @patient.street, surname: @patient.surname, zip: @patient.zip }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    put :update, id: @patient, patient: { city: @patient.city, date_of_birth: @patient.date_of_birth, email: @patient.email, house_number: @patient.house_number, name: @patient.name, phone: @patient.phone, street: @patient.street, surname: @patient.surname, zip: @patient.zip }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
