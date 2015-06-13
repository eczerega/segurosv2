require 'test_helper'

class CompaniaSegurosControllerTest < ActionController::TestCase
  setup do
    @compania_seguro = compania_seguros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compania_seguros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compania_seguro" do
    assert_difference('CompaniaSeguro.count') do
      post :create, compania_seguro: { aux1: @compania_seguro.aux1, aux2: @compania_seguro.aux2, aux3: @compania_seguro.aux3, banco: @compania_seguro.banco, cuenta_bancaria: @compania_seguro.cuenta_bancaria, dv: @compania_seguro.dv, image: @compania_seguro.image, nombre: @compania_seguro.nombre, rut: @compania_seguro.rut }
    end

    assert_redirected_to compania_seguro_path(assigns(:compania_seguro))
  end

  test "should show compania_seguro" do
    get :show, id: @compania_seguro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @compania_seguro
    assert_response :success
  end

  test "should update compania_seguro" do
    patch :update, id: @compania_seguro, compania_seguro: { aux1: @compania_seguro.aux1, aux2: @compania_seguro.aux2, aux3: @compania_seguro.aux3, banco: @compania_seguro.banco, cuenta_bancaria: @compania_seguro.cuenta_bancaria, dv: @compania_seguro.dv, image: @compania_seguro.image, nombre: @compania_seguro.nombre, rut: @compania_seguro.rut }
    assert_redirected_to compania_seguro_path(assigns(:compania_seguro))
  end

  test "should destroy compania_seguro" do
    assert_difference('CompaniaSeguro.count', -1) do
      delete :destroy, id: @compania_seguro
    end

    assert_redirected_to compania_seguros_path
  end
end
