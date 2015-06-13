require 'test_helper'

class ProductoTecnologiaControllerTest < ActionController::TestCase
  setup do
    @producto_tecnologium = producto_tecnologia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producto_tecnologia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto_tecnologium" do
    assert_difference('ProductoTecnologium.count') do
      post :create, producto_tecnologium: { anho: @producto_tecnologium.anho, apellido_asegurado: @producto_tecnologium.apellido_asegurado, apellido_comprador: @producto_tecnologium.apellido_comprador, digito_verifiador_comprador: @producto_tecnologium.digito_verifiador_comprador, digito_verificador_asegurado: @producto_tecnologium.digito_verificador_asegurado, email_asegurado: @producto_tecnologium.email_asegurado, email_comprador: @producto_tecnologium.email_comprador, fecha_inicio: @producto_tecnologium.fecha_inicio, fecha_termino: @producto_tecnologium.fecha_termino, marca: @producto_tecnologium.marca, nombre_asegurado: @producto_tecnologium.nombre_asegurado, nombre_comprador: @producto_tecnologium.nombre_comprador, numero_asegurado: @producto_tecnologium.numero_asegurado, numero_comprador: @producto_tecnologium.numero_comprador, producto: @producto_tecnologium.producto, rut_asegurado: @producto_tecnologium.rut_asegurado, rut_comprador: @producto_tecnologium.rut_comprador, tipo_producto: @producto_tecnologium.tipo_producto }
    end

    assert_redirected_to producto_tecnologium_path(assigns(:producto_tecnologium))
  end

  test "should show producto_tecnologium" do
    get :show, id: @producto_tecnologium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto_tecnologium
    assert_response :success
  end

  test "should update producto_tecnologium" do
    patch :update, id: @producto_tecnologium, producto_tecnologium: { anho: @producto_tecnologium.anho, apellido_asegurado: @producto_tecnologium.apellido_asegurado, apellido_comprador: @producto_tecnologium.apellido_comprador, digito_verifiador_comprador: @producto_tecnologium.digito_verifiador_comprador, digito_verificador_asegurado: @producto_tecnologium.digito_verificador_asegurado, email_asegurado: @producto_tecnologium.email_asegurado, email_comprador: @producto_tecnologium.email_comprador, fecha_inicio: @producto_tecnologium.fecha_inicio, fecha_termino: @producto_tecnologium.fecha_termino, marca: @producto_tecnologium.marca, nombre_asegurado: @producto_tecnologium.nombre_asegurado, nombre_comprador: @producto_tecnologium.nombre_comprador, numero_asegurado: @producto_tecnologium.numero_asegurado, numero_comprador: @producto_tecnologium.numero_comprador, producto: @producto_tecnologium.producto, rut_asegurado: @producto_tecnologium.rut_asegurado, rut_comprador: @producto_tecnologium.rut_comprador, tipo_producto: @producto_tecnologium.tipo_producto }
    assert_redirected_to producto_tecnologium_path(assigns(:producto_tecnologium))
  end

  test "should destroy producto_tecnologium" do
    assert_difference('ProductoTecnologium.count', -1) do
      delete :destroy, id: @producto_tecnologium
    end

    assert_redirected_to producto_tecnologia_path
  end
end
