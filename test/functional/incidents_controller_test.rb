require 'test_helper'

class IncidentsControllerTest < ActionController::TestCase
  setup do
    @incident = incidents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incidents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incident" do
    assert_difference('Incident.count') do
      post :create, incident: { address: @incident.address, can_we_send_you_email: @incident.can_we_send_you_email, date_of_incident: @incident.date_of_incident, description: @incident.description, email: @incident.email, latitude: @incident.latitude, longitude: @incident.longitude, name: @incident.name }
    end

    assert_redirected_to incident_path(assigns(:incident))
  end

  test "should show incident" do
    get :show, id: @incident
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incident
    assert_response :success
  end

  test "should update incident" do
    put :update, id: @incident, incident: { address: @incident.address, can_we_send_you_email: @incident.can_we_send_you_email, date_of_incident: @incident.date_of_incident, description: @incident.description, email: @incident.email, latitude: @incident.latitude, longitude: @incident.longitude, name: @incident.name }
    assert_redirected_to incident_path(assigns(:incident))
  end

  test "should destroy incident" do
    assert_difference('Incident.count', -1) do
      delete :destroy, id: @incident
    end

    assert_redirected_to incidents_path
  end
end
