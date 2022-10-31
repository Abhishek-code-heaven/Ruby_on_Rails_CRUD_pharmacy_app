require "application_system_test_case"

class PharmaciesTest < ApplicationSystemTestCase
  setup do
    @pharmacy = pharmacies(:one)
  end

  test "visiting the index" do
    visit pharmacies_url
    assert_selector "h1", text: "Pharmacies"
  end

  test "should create pharmacy" do
    visit pharmacies_url
    click_on "New pharmacy"

    fill_in "Age", with: @pharmacy.age
    fill_in "Delivery address", with: @pharmacy.delivery_address
    fill_in "Delivery details", with: @pharmacy.delivery_details
    fill_in "Email", with: @pharmacy.email
    fill_in "Gender", with: @pharmacy.gender
    fill_in "Integer", with: @pharmacy.integer
    fill_in "Patient", with: @pharmacy.patient_id
    fill_in "Patient name", with: @pharmacy.patient_name
    fill_in "Phone number", with: @pharmacy.phone_number
    fill_in "Prescription medicines", with: @pharmacy.prescription_medicines
    fill_in "String", with: @pharmacy.string
    click_on "Create Pharmacy"

    assert_text "Pharmacy was successfully created"
    click_on "Back"
  end

  test "should update Pharmacy" do
    visit pharmacy_url(@pharmacy)
    click_on "Edit this pharmacy", match: :first

    fill_in "Age", with: @pharmacy.age
    fill_in "Delivery address", with: @pharmacy.delivery_address
    fill_in "Delivery details", with: @pharmacy.delivery_details
    fill_in "Email", with: @pharmacy.email
    fill_in "Gender", with: @pharmacy.gender
    fill_in "Integer", with: @pharmacy.integer
    fill_in "Patient", with: @pharmacy.patient_id
    fill_in "Patient name", with: @pharmacy.patient_name
    fill_in "Phone number", with: @pharmacy.phone_number
    fill_in "Prescription medicines", with: @pharmacy.prescription_medicines
    fill_in "String", with: @pharmacy.string
    click_on "Update Pharmacy"

    assert_text "Pharmacy was successfully updated"
    click_on "Back"
  end

  test "should destroy Pharmacy" do
    visit pharmacy_url(@pharmacy)
    click_on "Destroy this pharmacy", match: :first

    assert_text "Pharmacy was successfully destroyed"
  end
end
