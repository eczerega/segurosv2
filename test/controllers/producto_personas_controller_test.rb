require 'test_helper'

class ProductoPersonasControllerTest < ActionController::TestCase
  setup do
    @producto_persona = producto_personas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producto_personas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto_persona" do
    assert_difference('ProductoPersona.count') do
      post :create, producto_persona: { apellido_asegurado: @producto_persona.apellido_asegurado, apellido_comprador: @producto_persona.apellido_comprador, digito_verifiador_comprador: @producto_persona.digito_verifiador_comprador, digito_verificador_asegurado: @producto_persona.digito_verificador_asegurado, email_asegurado: @producto_persona.email_asegurado, email_comprador: @producto_persona.email_comprador, fecha_inicio: @producto_persona.fecha_inicio, fecha_termino: @producto_persona.fecha_termino, nombre_asegurado: @producto_persona.nombre_asegurado, nombre_comprador: @producto_persona.nombre_comprador, numero_asegurado: @producto_persona.numero_asegurado, numero_comprador: @producto_persona.numero_comprador, producto: @producto_persona.producto, rut_asegurado: @producto_persona.rut_asegurado, rut_comprador: @producto_persona.rut_comprador }
    end

    assert_redirected_to producto_persona_path(assigns(:producto_persona))
  end

  test "should show producto_persona" do
    get :show, id: @producto_persona
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto_persona
    assert_response :success
  end

  test "should update producto_persona" do
    patch :update, id: @producto_persona, producto_persona: { apellido_asegurado: @producto_persona.apellido_asegurado, apellido_comprador: @producto_persona.apellido_comprador, digito_verifiador_comprador: @producto_persona.digito_verifiador_comprador, digito_verificador_asegurado: @producto_persona.digito_verificador_asegurado, email_asegurado: @producto_persona.email_asegurado, email_comprador: @producto_persona.email_comprador, fecha_inicio: @producto_persona.fecha_inicio, fecha_termino: @producto_persona.fecha_termino, nombre_asegurado: @producto_persona.nombre_asegurado, nombre_comprador: @producto_persona.nombre_comprador, numero_asegurado: @producto_persona.numero_asegurado, numero_comprador: @producto_persona.numero_comprador, producto: @producto_persona.producto, rut_asegurado: @producto_persona.rut_asegurado, rut_comprador: @producto_persona.rut_comprador }
    assert_redirected_to producto_persona_path(assigns(:producto_persona))
  end

  test "should destroy producto_persona" do
    assert_difference('ProductoPersona.count', -1) do
      delete :destroy, id: @producto_persona
    end

    assert_redirected_to producto_personas_path
  end
end
