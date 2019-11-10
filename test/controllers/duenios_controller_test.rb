require 'test_helper'

class DueniosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @duenio = duenios(:one)
  end

  test "should get index" do
    get duenios_url
    assert_response :success
  end

  test "should get new" do
    get new_duenio_url
    assert_response :success
  end

  test "should create duenio" do
    assert_difference('Duenio.count') do
      post duenios_url, params: { duenio: { direccion: @duenio.direccion, nombre: @duenio.nombre } }
    end

    assert_redirected_to duenio_url(Duenio.last)
  end

  test "should show duenio" do
    get duenio_url(@duenio)
    assert_response :success
  end

  test "should get edit" do
    get edit_duenio_url(@duenio)
    assert_response :success
  end

  test "should update duenio" do
    patch duenio_url(@duenio), params: { duenio: { direccion: @duenio.direccion, nombre: @duenio.nombre } }
    assert_redirected_to duenio_url(@duenio)
  end

  test "should destroy duenio" do
    assert_difference('Duenio.count', -1) do
      delete duenio_url(@duenio)
    end

    assert_redirected_to duenios_url
  end
end
