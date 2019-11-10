require "application_system_test_case"

class TratamientosTest < ApplicationSystemTestCase
  setup do
    @tratamiento = tratamientos(:one)
  end

  test "visiting the index" do
    visit tratamientos_url
    assert_selector "h1", text: "Tratamientos"
  end

  test "creating a Tratamiento" do
    visit tratamientos_url
    click_on "New Tratamiento"

    fill_in "Descripcion", with: @tratamiento.descripcion
    fill_in "Medicamento", with: @tratamiento.medicamento_id
    fill_in "Receta", with: @tratamiento.receta_id
    click_on "Create Tratamiento"

    assert_text "Tratamiento was successfully created"
    click_on "Back"
  end

  test "updating a Tratamiento" do
    visit tratamientos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @tratamiento.descripcion
    fill_in "Medicamento", with: @tratamiento.medicamento_id
    fill_in "Receta", with: @tratamiento.receta_id
    click_on "Update Tratamiento"

    assert_text "Tratamiento was successfully updated"
    click_on "Back"
  end

  test "destroying a Tratamiento" do
    visit tratamientos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tratamiento was successfully destroyed"
  end
end
