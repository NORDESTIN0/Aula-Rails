require "application_system_test_case"

class PcTypesTest < ApplicationSystemTestCase
  setup do
    @pc_type = pc_types(:one)
  end

  test "visiting the index" do
    visit pc_types_url
    assert_selector "h1", text: "Pc Types"
  end

  test "creating a Pc type" do
    visit pc_types_url
    click_on "New Pc Type"

    fill_in "", with: @pc_type.
    fill_in "Acronym", with: @pc_type.acronym
    fill_in "Name", with: @pc_type.name
    click_on "Create Pc type"

    assert_text "Pc type was successfully created"
    click_on "Back"
  end

  test "updating a Pc type" do
    visit pc_types_url
    click_on "Edit", match: :first

    fill_in "", with: @pc_type.
    fill_in "Acronym", with: @pc_type.acronym
    fill_in "Name", with: @pc_type.name
    click_on "Update Pc type"

    assert_text "Pc type was successfully updated"
    click_on "Back"
  end

  test "destroying a Pc type" do
    visit pc_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pc type was successfully destroyed"
  end
end
