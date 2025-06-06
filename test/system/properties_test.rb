require "application_system_test_case"

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test "visiting the index" do
    visit properties_url
    assert_selector "h1", text: "Properties"
  end

  test "should create property" do
    visit properties_url
    click_on "New property"

    fill_in "Address", with: @property.address
    check "Balcony" if @property.balcony
    fill_in "Bathroom count", with: @property.bathroom_count
    fill_in "Building age", with: @property.building_age
    fill_in "City", with: @property.city
    fill_in "Description", with: @property.description
    fill_in "District", with: @property.district
    fill_in "Floor", with: @property.floor
    check "Furnished" if @property.furnished
    check "Parking" if @property.parking
    fill_in "Price", with: @property.price
    fill_in "Property type", with: @property.property_type
    fill_in "Room count", with: @property.room_count
    fill_in "Square meters", with: @property.square_meters
    fill_in "Title", with: @property.title
    fill_in "Total floors", with: @property.total_floors
    fill_in "User", with: @property.user_id
    click_on "Create Property"

    assert_text "Property was successfully created"
    click_on "Back"
  end

  test "should update Property" do
    visit property_url(@property)
    click_on "Edit this property", match: :first

    fill_in "Address", with: @property.address
    check "Balcony" if @property.balcony
    fill_in "Bathroom count", with: @property.bathroom_count
    fill_in "Building age", with: @property.building_age
    fill_in "City", with: @property.city
    fill_in "Description", with: @property.description
    fill_in "District", with: @property.district
    fill_in "Floor", with: @property.floor
    check "Furnished" if @property.furnished
    check "Parking" if @property.parking
    fill_in "Price", with: @property.price
    fill_in "Property type", with: @property.property_type
    fill_in "Room count", with: @property.room_count
    fill_in "Square meters", with: @property.square_meters
    fill_in "Title", with: @property.title
    fill_in "Total floors", with: @property.total_floors
    fill_in "User", with: @property.user_id
    click_on "Update Property"

    assert_text "Property was successfully updated"
    click_on "Back"
  end

  test "should destroy Property" do
    visit property_url(@property)
    accept_confirm { click_on "Destroy this property", match: :first }

    assert_text "Property was successfully destroyed"
  end
end
