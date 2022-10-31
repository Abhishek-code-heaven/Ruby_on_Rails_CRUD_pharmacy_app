require "application_system_test_case"

class PharmaceuticalsTest < ApplicationSystemTestCase
  setup do
    @pharmaceutical = pharmaceuticals(:one)
  end

  test "visiting the index" do
    visit pharmaceuticals_url
    assert_selector "h1", text: "Pharmaceuticals"
  end

  test "should create pharmaceutical" do
    visit pharmaceuticals_url
    click_on "New pharmaceutical"

    fill_in "Age", with: @pharmaceutical.age
    fill_in "Delivery address", with: @pharmaceutical.delivery_address
    fill_in "Email", with: @pharmaceutical.email
    fill_in "Gender", with: @pharmaceutical.gender
    fill_in "Name", with: @pharmaceutical.name
    fill_in "Patient", with: @pharmaceutical.patient_id
    fill_in "Phone number", with: @pharmaceutical.phone_number
    fill_in "Prescription medicines", with: @pharmaceutical.prescription_medicines
    click_on "Create Pharmaceutical"

    assert_text "Pharmaceutical was successfully created"
    click_on "Back"
  end

  test "should update Pharmaceutical" do
    visit pharmaceutical_url(@pharmaceutical)
    click_on "Edit this pharmaceutical", match: :first

    fill_in "Age", with: @pharmaceutical.age
    fill_in "Delivery address", with: @pharmaceutical.delivery_address
    fill_in "Email", with: @pharmaceutical.email
    fill_in "Gender", with: @pharmaceutical.gender
    fill_in "Name", with: @pharmaceutical.name
    fill_in "Patient", with: @pharmaceutical.patient_id
    fill_in "Phone number", with: @pharmaceutical.phone_number
    fill_in "Prescription medicines", with: @pharmaceutical.prescription_medicines
    click_on "Update Pharmaceutical"

    assert_text "Pharmaceutical was successfully updated"
    click_on "Back"
  end

  test "should destroy Pharmaceutical" do
    visit pharmaceutical_url(@pharmaceutical)
    click_on "Destroy this pharmaceutical", match: :first

    assert_text "Pharmaceutical was successfully destroyed"
  end
end
