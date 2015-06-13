require 'test_helper'

class EmpresasGrandesControllerTest < ActionController::TestCase
  setup do
    @empresas_grande = empresas_grandes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empresas_grandes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empresas_grande" do
    assert_difference('EmpresasGrande.count') do
      post :create, empresas_grande: { aux1: @empresas_grande.aux1, aux2: @empresas_grande.aux2, aux3: @empresas_grande.aux3, dv: @empresas_grande.dv, image: @empresas_grande.image, nombre: @empresas_grande.nombre, representante_legal_rut: @empresas_grande.representante_legal_rut }
    end

    assert_redirected_to empresas_grande_path(assigns(:empresas_grande))
  end

  test "should show empresas_grande" do
    get :show, id: @empresas_grande
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empresas_grande
    assert_response :success
  end

  test "should update empresas_grande" do
    patch :update, id: @empresas_grande, empresas_grande: { aux1: @empresas_grande.aux1, aux2: @empresas_grande.aux2, aux3: @empresas_grande.aux3, dv: @empresas_grande.dv, image: @empresas_grande.image, nombre: @empresas_grande.nombre, representante_legal_rut: @empresas_grande.representante_legal_rut }
    assert_redirected_to empresas_grande_path(assigns(:empresas_grande))
  end

  test "should destroy empresas_grande" do
    assert_difference('EmpresasGrande.count', -1) do
      delete :destroy, id: @empresas_grande
    end

    assert_redirected_to empresas_grandes_path
  end
end
