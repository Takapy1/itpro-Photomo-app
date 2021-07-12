require "application_system_test_case"

class PhotographersTest < ApplicationSystemTestCase
  setup do
    @photographer = photographers(:one)
  end

  test "visiting the index" do
    visit photographers_url
    assert_selector "h1", text: "Photographers"
  end

  test "creating a Photographer" do
    visit photographers_url
    click_on "New Photographer"

    fill_in "Age", with: @photographer.age
    fill_in "Camera", with: @photographer.camera
    fill_in "Category", with: @photographer.category
    fill_in "Gender", with: @photographer.gender
    fill_in "Name", with: @photographer.name
    click_on "Create Photographer"

    assert_text "Photographer was successfully created"
    click_on "Back"
  end

  test "updating a Photographer" do
    visit photographers_url
    click_on "Edit", match: :first

    fill_in "Age", with: @photographer.age
    fill_in "Camera", with: @photographer.camera
    fill_in "Category", with: @photographer.category
    fill_in "Gender", with: @photographer.gender
    fill_in "Name", with: @photographer.name
    click_on "Update Photographer"

    assert_text "Photographer was successfully updated"
    click_on "Back"
  end

  test "destroying a Photographer" do
    visit photographers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Photographer was successfully destroyed"
  end
end
