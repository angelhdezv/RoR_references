require "application_system_test_case"

class RecetaTest < ApplicationSystemTestCase
  setup do
    @recetum = receta(:one)
  end

  test "visiting the index" do
    visit receta_url
    assert_selector "h1", text: "Receta"
  end

  test "creating a Recetum" do
    visit receta_url
    click_on "New Recetum"

    fill_in "Doctor", with: @recetum.Doctor_id
    fill_in "Mascota", with: @recetum.Mascota_id
    click_on "Create Recetum"

    assert_text "Recetum was successfully created"
    click_on "Back"
  end

  test "updating a Recetum" do
    visit receta_url
    click_on "Edit", match: :first

    fill_in "Doctor", with: @recetum.Doctor_id
    fill_in "Mascota", with: @recetum.Mascota_id
    click_on "Update Recetum"

    assert_text "Recetum was successfully updated"
    click_on "Back"
  end

  test "destroying a Recetum" do
    visit receta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recetum was successfully destroyed"
  end
end
