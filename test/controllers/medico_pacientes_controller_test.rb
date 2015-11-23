require 'test_helper'

class MedicoPacientesControllerTest < ActionController::TestCase
  setup do
    @medico_paciente = medico_pacientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medico_pacientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medico_paciente" do
    assert_difference('MedicoPaciente.count') do
      post :create, medico_paciente: { medico_id: @medico_paciente.medico_id, paciente_id: @medico_paciente.paciente_id }
    end

    assert_redirected_to medico_paciente_path(assigns(:medico_paciente))
  end

  test "should show medico_paciente" do
    get :show, id: @medico_paciente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medico_paciente
    assert_response :success
  end

  test "should update medico_paciente" do
    patch :update, id: @medico_paciente, medico_paciente: { medico_id: @medico_paciente.medico_id, paciente_id: @medico_paciente.paciente_id }
    assert_redirected_to medico_paciente_path(assigns(:medico_paciente))
  end

  test "should destroy medico_paciente" do
    assert_difference('MedicoPaciente.count', -1) do
      delete :destroy, id: @medico_paciente
    end

    assert_redirected_to medico_pacientes_path
  end
end
