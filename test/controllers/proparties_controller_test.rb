require "test_helper"

class PropartiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proparty = proparties(:one)
  end

  test "should get index" do
    get proparties_url
    assert_response :success
  end

  test "should get new" do
    get new_proparty_url
    assert_response :success
  end

  test "should create proparty" do
    assert_difference("Proparty.count") do
      post proparties_url, params: { proparty: { address: @proparty.address, bathroom: @proparty.bathroom, name: @proparty.name, price: @proparty.price, rooms: @proparty.rooms } }
    end

    assert_redirected_to proparty_url(Proparty.last)
  end

  test "should show proparty" do
    get proparty_url(@proparty)
    assert_response :success
  end

  test "should get edit" do
    get edit_proparty_url(@proparty)
    assert_response :success
  end

  test "should update proparty" do
    patch proparty_url(@proparty), params: { proparty: { address: @proparty.address, bathroom: @proparty.bathroom, name: @proparty.name, price: @proparty.price, rooms: @proparty.rooms } }
    assert_redirected_to proparty_url(@proparty)
  end

  test "should destroy proparty" do
    assert_difference("Proparty.count", -1) do
      delete proparty_url(@proparty)
    end

    assert_redirected_to proparties_url
  end
end
