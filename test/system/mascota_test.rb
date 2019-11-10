require "application_system_test_case"

class MascotaTest < ApplicationSystemTestCase
  setup do
    @mascotum = mascota(:one)
  end

  test "visiting the index" do
    visit mascota_url
    assert_selector "h1", text: "Mascota"
  end

  test "creating a Mascotum" do
    visit mascota_url
    click_on "New Mascotum"

    fill_in "Doctor", with: @mascotum.doctor_id
    fill_in "Duenio", with: @mascotum.duenio_id
    fill_in "Nombre", with: @mascotum.nombre
    click_on "Create Mascotum"

    assert_text "Mascotum was successfully created"
    click_on "Back"
  end

  test "updating a Mascotum" do
    visit mascota_url
    click_on "Edit", match: :first

    fill_in "Doctor", with: @mascotum.doctor_id
    fill_in "Duenio", with: @mascotum.duenio_id
    fill_in "Nombre", with: @mascotum.nombre
    click_on "Update Mascotum"

    assert_text "Mascotum was successfully updated"
    click_on "Back"
  end

  test "destroying a Mascotum" do
    visit mascota_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mascotum was successfully destroyed"
  end
end
