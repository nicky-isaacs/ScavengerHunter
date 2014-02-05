require 'test_helper'

class ScavengerHuntsControllerTest < ActionController::TestCase
  setup do
    @scavenger_hunt = scavenger_hunts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scavenger_hunts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scavenger_hunt" do
    assert_difference('ScavengerHunt.count') do
      post :create, scavenger_hunt: { end_date: @scavenger_hunt.end_date, name: @scavenger_hunt.name, start_date: @scavenger_hunt.start_date }
    end

    assert_redirected_to scavenger_hunt_path(assigns(:scavenger_hunt))
  end

  test "should show scavenger_hunt" do
    get :show, id: @scavenger_hunt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scavenger_hunt
    assert_response :success
  end

  test "should update scavenger_hunt" do
    put :update, id: @scavenger_hunt, scavenger_hunt: { end_date: @scavenger_hunt.end_date, name: @scavenger_hunt.name, start_date: @scavenger_hunt.start_date }
    assert_redirected_to scavenger_hunt_path(assigns(:scavenger_hunt))
  end

  test "should destroy scavenger_hunt" do
    assert_difference('ScavengerHunt.count', -1) do
      delete :destroy, id: @scavenger_hunt
    end

    assert_redirected_to scavenger_hunts_path
  end
end
