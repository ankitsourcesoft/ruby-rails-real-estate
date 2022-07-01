require "application_system_test_case"

class PropartiesTest < ApplicationSystemTestCase
  setup do
    @proparty = proparties(:one)
  end

  test "visiting the index" do
    visit proparties_url
    assert_selector "h1", text: "Proparties"
  end

  test "should create proparty" do
    visit proparties_url
    click_on "New proparty"

    fill_in "Address", with: @proparty.address
    fill_in "Bathroom", with: @proparty.bathroom
    fill_in "Name", with: @proparty.name
    fill_in "Price", with: @proparty.price
    fill_in "Rooms", with: @proparty.rooms
    click_on "Create Proparty"

    assert_text "Proparty was successfully created"
    click_on "Back"
  end

  test "should update Proparty" do
    visit proparty_url(@proparty)
    click_on "Edit this proparty", match: :first

    fill_in "Address", with: @proparty.address
    fill_in "Bathroom", with: @proparty.bathroom
    fill_in "Name", with: @proparty.name
    fill_in "Price", with: @proparty.price
    fill_in "Rooms", with: @proparty.rooms
    click_on "Update Proparty"

    assert_text "Proparty was successfully updated"
    click_on "Back"
  end

  test "should destroy Proparty" do
    visit proparty_url(@proparty)
    click_on "Destroy this proparty", match: :first

    assert_text "Proparty was successfully destroyed"
  end
end
