require 'test_helper'

class InformacionProductosControllerTest < ActionController::TestCase
  setup do
    @informacion_producto = informacion_productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:informacion_productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create informacion_producto" do
    assert_difference('InformacionProducto.count') do
      post :create, informacion_producto: { aseguradora_responsable_id: @informacion_producto.aseguradora_responsable_id, aux1: @informacion_producto.aux1, aux2: @informacion_producto.aux2, aux3: @informacion_producto.aux3, duracion_meses: @informacion_producto.duracion_meses, image: @informacion_producto.image, nombre: @informacion_producto.nombre, prima: @informacion_producto.prima, tipo: @informacion_producto.tipo, valor_asegurado: @informacion_producto.valor_asegurado }
    end

    assert_redirected_to informacion_producto_path(assigns(:informacion_producto))
  end

  test "should show informacion_producto" do
    get :show, id: @informacion_producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @informacion_producto
    assert_response :success
  end

  test "should update informacion_producto" do
    patch :update, id: @informacion_producto, informacion_producto: { aseguradora_responsable_id: @informacion_producto.aseguradora_responsable_id, aux1: @informacion_producto.aux1, aux2: @informacion_producto.aux2, aux3: @informacion_producto.aux3, duracion_meses: @informacion_producto.duracion_meses, image: @informacion_producto.image, nombre: @informacion_producto.nombre, prima: @informacion_producto.prima, tipo: @informacion_producto.tipo, valor_asegurado: @informacion_producto.valor_asegurado }
    assert_redirected_to informacion_producto_path(assigns(:informacion_producto))
  end

  test "should destroy informacion_producto" do
    assert_difference('InformacionProducto.count', -1) do
      delete :destroy, id: @informacion_producto
    end

    assert_redirected_to informacion_productos_path
  end
end
