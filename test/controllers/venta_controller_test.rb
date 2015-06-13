require 'test_helper'

class VentaControllerTest < ActionController::TestCase
  setup do
    @ventum = venta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:venta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ventum" do
    assert_difference('Ventum.count') do
      post :create, ventum: { aux1: @ventum.aux1, aux2: @ventum.aux2, aux3: @ventum.aux3, monto: @ventum.monto, punto_de_venta_id: @ventum.punto_de_venta_id, tipo_producto: @ventum.tipo_producto, vendedor_id: @ventum.vendedor_id }
    end

    assert_redirected_to ventum_path(assigns(:ventum))
  end

  test "should show ventum" do
    get :show, id: @ventum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ventum
    assert_response :success
  end

  test "should update ventum" do
    patch :update, id: @ventum, ventum: { aux1: @ventum.aux1, aux2: @ventum.aux2, aux3: @ventum.aux3, monto: @ventum.monto, punto_de_venta_id: @ventum.punto_de_venta_id, tipo_producto: @ventum.tipo_producto, vendedor_id: @ventum.vendedor_id }
    assert_redirected_to ventum_path(assigns(:ventum))
  end

  test "should destroy ventum" do
    assert_difference('Ventum.count', -1) do
      delete :destroy, id: @ventum
    end

    assert_redirected_to venta_path
  end
end
