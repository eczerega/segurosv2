require 'test_helper'

class ProductoVehiculosControllerTest < ActionController::TestCase
  setup do
    @producto_vehiculo = producto_vehiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producto_vehiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto_vehiculo" do
    assert_difference('ProductoVehiculo.count') do
      post :create, producto_vehiculo: { anho: @producto_vehiculo.anho, apellido_asegurado: @producto_vehiculo.apellido_asegurado, apellido_comprador: @producto_vehiculo.apellido_comprador, digito_verifiador_comprador: @producto_vehiculo.digito_verifiador_comprador, digito_verificador_asegurado: @producto_vehiculo.digito_verificador_asegurado, email_asegurado: @producto_vehiculo.email_asegurado, email_comprador: @producto_vehiculo.email_comprador, fecha_inicio: @producto_vehiculo.fecha_inicio, fecha_termino: @producto_vehiculo.fecha_termino, marca: @producto_vehiculo.marca, modelos: @producto_vehiculo.modelos, motor: @producto_vehiculo.motor, nombre_asegurado: @producto_vehiculo.nombre_asegurado, nombre_comprador: @producto_vehiculo.nombre_comprador, numero_asegurado: @producto_vehiculo.numero_asegurado, numero_comprador: @producto_vehiculo.numero_comprador, patente: @producto_vehiculo.patente, producto: @producto_vehiculo.producto, rut_asegurado: @producto_vehiculo.rut_asegurado, rut_comprador: @producto_vehiculo.rut_comprador }
    end

    assert_redirected_to producto_vehiculo_path(assigns(:producto_vehiculo))
  end

  test "should show producto_vehiculo" do
    get :show, id: @producto_vehiculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto_vehiculo
    assert_response :success
  end

  test "should update producto_vehiculo" do
    patch :update, id: @producto_vehiculo, producto_vehiculo: { anho: @producto_vehiculo.anho, apellido_asegurado: @producto_vehiculo.apellido_asegurado, apellido_comprador: @producto_vehiculo.apellido_comprador, digito_verifiador_comprador: @producto_vehiculo.digito_verifiador_comprador, digito_verificador_asegurado: @producto_vehiculo.digito_verificador_asegurado, email_asegurado: @producto_vehiculo.email_asegurado, email_comprador: @producto_vehiculo.email_comprador, fecha_inicio: @producto_vehiculo.fecha_inicio, fecha_termino: @producto_vehiculo.fecha_termino, marca: @producto_vehiculo.marca, modelos: @producto_vehiculo.modelos, motor: @producto_vehiculo.motor, nombre_asegurado: @producto_vehiculo.nombre_asegurado, nombre_comprador: @producto_vehiculo.nombre_comprador, numero_asegurado: @producto_vehiculo.numero_asegurado, numero_comprador: @producto_vehiculo.numero_comprador, patente: @producto_vehiculo.patente, producto: @producto_vehiculo.producto, rut_asegurado: @producto_vehiculo.rut_asegurado, rut_comprador: @producto_vehiculo.rut_comprador }
    assert_redirected_to producto_vehiculo_path(assigns(:producto_vehiculo))
  end

  test "should destroy producto_vehiculo" do
    assert_difference('ProductoVehiculo.count', -1) do
      delete :destroy, id: @producto_vehiculo
    end

    assert_redirected_to producto_vehiculos_path
  end
end
