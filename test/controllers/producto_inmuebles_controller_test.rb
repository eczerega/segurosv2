require 'test_helper'

class ProductoInmueblesControllerTest < ActionController::TestCase
  setup do
    @producto_inmueble = producto_inmuebles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producto_inmuebles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto_inmueble" do
    assert_difference('ProductoInmueble.count') do
      post :create, producto_inmueble: { apellido_asegurado: @producto_inmueble.apellido_asegurado, apellido_comprador: @producto_inmueble.apellido_comprador, calle: @producto_inmueble.calle, ciudad: @producto_inmueble.ciudad, comuna: @producto_inmueble.comuna, construccion: @producto_inmueble.construccion, digito_verificador_asegurado: @producto_inmueble.digito_verificador_asegurado, digito_verificador_comprador: @producto_inmueble.digito_verificador_comprador, email_asegurado: @producto_inmueble.email_asegurado, email_comprador: @producto_inmueble.email_comprador, fecha_inicio: @producto_inmueble.fecha_inicio, fecha_termino: @producto_inmueble.fecha_termino, nombre_asegurado: @producto_inmueble.nombre_asegurado, nombre_comprador: @producto_inmueble.nombre_comprador, numero: @producto_inmueble.numero, numero_asegurado: @producto_inmueble.numero_asegurado, numero_comprador: @producto_inmueble.numero_comprador, producto: @producto_inmueble.producto, region: @producto_inmueble.region, rut_asegurado: @producto_inmueble.rut_asegurado, rut_comprador: @producto_inmueble.rut_comprador, tipo_vivienda: @producto_inmueble.tipo_vivienda }
    end

    assert_redirected_to producto_inmueble_path(assigns(:producto_inmueble))
  end

  test "should show producto_inmueble" do
    get :show, id: @producto_inmueble
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto_inmueble
    assert_response :success
  end

  test "should update producto_inmueble" do
    patch :update, id: @producto_inmueble, producto_inmueble: { apellido_asegurado: @producto_inmueble.apellido_asegurado, apellido_comprador: @producto_inmueble.apellido_comprador, calle: @producto_inmueble.calle, ciudad: @producto_inmueble.ciudad, comuna: @producto_inmueble.comuna, construccion: @producto_inmueble.construccion, digito_verificador_asegurado: @producto_inmueble.digito_verificador_asegurado, digito_verificador_comprador: @producto_inmueble.digito_verificador_comprador, email_asegurado: @producto_inmueble.email_asegurado, email_comprador: @producto_inmueble.email_comprador, fecha_inicio: @producto_inmueble.fecha_inicio, fecha_termino: @producto_inmueble.fecha_termino, nombre_asegurado: @producto_inmueble.nombre_asegurado, nombre_comprador: @producto_inmueble.nombre_comprador, numero: @producto_inmueble.numero, numero_asegurado: @producto_inmueble.numero_asegurado, numero_comprador: @producto_inmueble.numero_comprador, producto: @producto_inmueble.producto, region: @producto_inmueble.region, rut_asegurado: @producto_inmueble.rut_asegurado, rut_comprador: @producto_inmueble.rut_comprador, tipo_vivienda: @producto_inmueble.tipo_vivienda }
    assert_redirected_to producto_inmueble_path(assigns(:producto_inmueble))
  end

  test "should destroy producto_inmueble" do
    assert_difference('ProductoInmueble.count', -1) do
      delete :destroy, id: @producto_inmueble
    end

    assert_redirected_to producto_inmuebles_path
  end
end
