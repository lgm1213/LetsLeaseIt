require 'test_helper'

class ListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get listings_url
    assert_response :success
  end

  test "should get new" do
    get new_listing_url
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post listings_url, params: { listing: { bath: @listing.bath, bedrooms: @listing.bedrooms, building_id: @listing.building_id, date_available: @listing.date_available, half_bath: @listing.half_bath, model_name: @listing.model_name, notes: @listing.notes, price: @listing.price, sqft: @listing.sqft, unit_no: @listing.unit_no } }
    end

    assert_redirected_to listing_url(Listing.last)
  end

  test "should show listing" do
    get listing_url(@listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_listing_url(@listing)
    assert_response :success
  end

  test "should update listing" do
    patch listing_url(@listing), params: { listing: { bath: @listing.bath, bedrooms: @listing.bedrooms, building_id: @listing.building_id, date_available: @listing.date_available, half_bath: @listing.half_bath, model_name: @listing.model_name, notes: @listing.notes, price: @listing.price, sqft: @listing.sqft, unit_no: @listing.unit_no } }
    assert_redirected_to listing_url(@listing)
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete listing_url(@listing)
    end

    assert_redirected_to listings_url
  end
end
