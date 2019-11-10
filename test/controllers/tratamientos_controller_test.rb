require 'test_helper'

class TratamientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tratamiento = tratamientos(:one)
  end

  test "should get index" do
    get tratamientos_url
    assert_response :success
  end

  test "should get new" do
    get new_tratamiento_url
    assert_response :success
  end

  test "should create tratamiento" do
    assert_difference('Tratamiento.count') do
      post tratamientos_url, params: { tratamiento: { descripcion: @tratamiento.descripcion, medicamento_id: @tratamiento.medicamento_id, receta_id: @tratamiento.receta_id } }
    end

    assert_redirected_to tratamiento_url(Tratamiento.last)
  end

  test "should show tratamiento" do
    get tratamiento_url(@tratamiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_tratamiento_url(@tratamiento)
    assert_response :success
  end

  test "should update tratamiento" do
    patch tratamiento_url(@tratamiento), params: { tratamiento: { descripcion: @tratamiento.descripcion, medicamento_id: @tratamiento.medicamento_id, receta_id: @tratamiento.receta_id } }
    assert_redirected_to tratamiento_url(@tratamiento)
  end

  test "should destroy tratamiento" do
    assert_difference('Tratamiento.count', -1) do
      delete tratamiento_url(@tratamiento)
    end

    assert_redirected_to tratamientos_url
  end
end
