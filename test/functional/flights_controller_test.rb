require 'test_helper'

class FlightsControllerTest < ActionController::TestCase
  setup do
    @flight = flights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flight" do
    assert_difference('Flight.count') do
      post :create, flight: { arr_id: @flight.arr_id, arr_time: @flight.arr_time, dept_id: @flight.dept_id, dept_time: @flight.dept_time, duration: @flight.duration, flight_num: @flight.flight_num, miles: @flight.miles, num_seats: @flight.num_seats }
    end

    assert_redirected_to flight_path(assigns(:flight))
  end

  test "should show flight" do
    get :show, id: @flight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flight
    assert_response :success
  end

  test "should update flight" do
    put :update, id: @flight, flight: { arr_id: @flight.arr_id, arr_time: @flight.arr_time, dept_id: @flight.dept_id, dept_time: @flight.dept_time, duration: @flight.duration, flight_num: @flight.flight_num, miles: @flight.miles, num_seats: @flight.num_seats }
    assert_redirected_to flight_path(assigns(:flight))
  end

  test "should destroy flight" do
    assert_difference('Flight.count', -1) do
      delete :destroy, id: @flight
    end

    assert_redirected_to flights_path
  end
end
