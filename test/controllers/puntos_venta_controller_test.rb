require 'test_helper'

class PuntosVentaControllerTest < ActionController::TestCase
  setup do
    @puntos_ventum = puntos_venta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:puntos_venta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create puntos_ventum" do
    assert_difference('PuntosVentum.count') do
      post :create, puntos_ventum: { aux1: @puntos_ventum.aux1, aux2: @puntos_ventum.aux2, aux3: @puntos_ventum.aux3, calle: @puntos_ventum.calle, ciudad: @puntos_ventum.ciudad, comuna: @puntos_ventum.comuna, dv: @puntos_ventum.dv, empresa_id: @puntos_ventum.empresa_id, image: @puntos_ventum.image, nombre: @puntos_ventum.nombre, rut: @puntos_ventum.rut }
    end

    assert_redirected_to puntos_ventum_path(assigns(:puntos_ventum))
  end

  test "should show puntos_ventum" do
    get :show, id: @puntos_ventum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @puntos_ventum
    assert_response :success
  end

  test "should update puntos_ventum" do
    patch :update, id: @puntos_ventum, puntos_ventum: { aux1: @puntos_ventum.aux1, aux2: @puntos_ventum.aux2, aux3: @puntos_ventum.aux3, calle: @puntos_ventum.calle, ciudad: @puntos_ventum.ciudad, comuna: @puntos_ventum.comuna, dv: @puntos_ventum.dv, empresa_id: @puntos_ventum.empresa_id, image: @puntos_ventum.image, nombre: @puntos_ventum.nombre, rut: @puntos_ventum.rut }
    assert_redirected_to puntos_ventum_path(assigns(:puntos_ventum))
  end

  test "should destroy puntos_ventum" do
    assert_difference('PuntosVentum.count', -1) do
      delete :destroy, id: @puntos_ventum
    end

    assert_redirected_to puntos_venta_path
  end
end
