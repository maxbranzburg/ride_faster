require 'test_helper'

class RidesControllerTest < ActionController::TestCase
  setup do
    @ride = rides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ride" do
    assert_difference('Ride.count') do
      post :create, ride: { actual_duration: @ride.actual_duration, actual_wait_time: @ride.actual_wait_time, brand: @ride.brand, cost_after_discounts: @ride.cost_after_discounts, cost_before_discounts: @ride.cost_before_discounts, drop_address: @ride.drop_address, drops_en_route: @ride.drops_en_route, est_duration_at_pick: @ride.est_duration_at_pick, est_wait_time: @ride.est_wait_time, pick_address: @ride.pick_address, pick_pax: @ride.pick_pax, pick_time: @ride.pick_time, picks_en_route: @ride.picks_en_route, request_time: @ride.request_time, user_id: @ride.user_id }
    end

    assert_redirected_to ride_path(assigns(:ride))
  end

  test "should show ride" do
    get :show, id: @ride
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ride
    assert_response :success
  end

  test "should update ride" do
    patch :update, id: @ride, ride: { actual_duration: @ride.actual_duration, actual_wait_time: @ride.actual_wait_time, brand: @ride.brand, cost_after_discounts: @ride.cost_after_discounts, cost_before_discounts: @ride.cost_before_discounts, drop_address: @ride.drop_address, drops_en_route: @ride.drops_en_route, est_duration_at_pick: @ride.est_duration_at_pick, est_wait_time: @ride.est_wait_time, pick_address: @ride.pick_address, pick_pax: @ride.pick_pax, pick_time: @ride.pick_time, picks_en_route: @ride.picks_en_route, request_time: @ride.request_time, user_id: @ride.user_id }
    assert_redirected_to ride_path(assigns(:ride))
  end

  test "should destroy ride" do
    assert_difference('Ride.count', -1) do
      delete :destroy, id: @ride
    end

    assert_redirected_to rides_path
  end
end
