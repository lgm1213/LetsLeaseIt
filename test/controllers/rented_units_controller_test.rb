require 'test_helper'

class RentedUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rented_unit = rented_units(:one)
  end

  test "should get index" do
    get rented_units_url
    assert_response :success
  end

  test "should get new" do
    get new_rented_unit_url
    assert_response :success
  end

  test "should create rented_unit" do
    assert_difference('RentedUnit.count') do
      post rented_units_url, params: { rented_unit: { appointment_id: @rented_unit.appointment_id, bathrooms: @rented_unit.bathrooms, bedrooms: @rented_unit.bedrooms, half_baths: @rented_unit.half_baths, leased: @rented_unit.leased, price: @rented_unit.price, square_footage: @rented_unit.square_footage, unit_model: @rented_unit.unit_model, unit_no: @rented_unit.unit_no } }
    end

    assert_redirected_to rented_unit_url(RentedUnit.last)
  end

  test "should show rented_unit" do
    get rented_unit_url(@rented_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_rented_unit_url(@rented_unit)
    assert_response :success
  end

  test "should update rented_unit" do
    patch rented_unit_url(@rented_unit), params: { rented_unit: { appointment_id: @rented_unit.appointment_id, bathrooms: @rented_unit.bathrooms, bedrooms: @rented_unit.bedrooms, half_baths: @rented_unit.half_baths, leased: @rented_unit.leased, price: @rented_unit.price, square_footage: @rented_unit.square_footage, unit_model: @rented_unit.unit_model, unit_no: @rented_unit.unit_no } }
    assert_redirected_to rented_unit_url(@rented_unit)
  end

  test "should destroy rented_unit" do
    assert_difference('RentedUnit.count', -1) do
      delete rented_unit_url(@rented_unit)
    end

    assert_redirected_to rented_units_url
  end
end
