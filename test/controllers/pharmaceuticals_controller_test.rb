require "test_helper"

class PharmaceuticalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pharmaceutical = pharmaceuticals(:one)
  end

  test "should get index" do
    get pharmaceuticals_url
    assert_response :success
  end

  test "should get new" do
    get new_pharmaceutical_url
    assert_response :success
  end

  test "should create pharmaceutical" do
    assert_difference("Pharmaceutical.count") do
      post pharmaceuticals_url, params: { pharmaceutical: { age: @pharmaceutical.age, delivery_address: @pharmaceutical.delivery_address, email: @pharmaceutical.email, gender: @pharmaceutical.gender, name: @pharmaceutical.name, patient_id: @pharmaceutical.patient_id, phone_number: @pharmaceutical.phone_number, prescription_medicines: @pharmaceutical.prescription_medicines } }
    end

    assert_redirected_to pharmaceutical_url(Pharmaceutical.last)
  end

  test "should show pharmaceutical" do
    get pharmaceutical_url(@pharmaceutical)
    assert_response :success
  end

  test "should get edit" do
    get edit_pharmaceutical_url(@pharmaceutical)
    assert_response :success
  end

  test "should update pharmaceutical" do
    patch pharmaceutical_url(@pharmaceutical), params: { pharmaceutical: { age: @pharmaceutical.age, delivery_address: @pharmaceutical.delivery_address, email: @pharmaceutical.email, gender: @pharmaceutical.gender, name: @pharmaceutical.name, patient_id: @pharmaceutical.patient_id, phone_number: @pharmaceutical.phone_number, prescription_medicines: @pharmaceutical.prescription_medicines } }
    assert_redirected_to pharmaceutical_url(@pharmaceutical)
  end

  test "should destroy pharmaceutical" do
    assert_difference("Pharmaceutical.count", -1) do
      delete pharmaceutical_url(@pharmaceutical)
    end

    assert_redirected_to pharmaceuticals_url
  end
end
