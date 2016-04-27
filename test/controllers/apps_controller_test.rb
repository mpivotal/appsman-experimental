require 'test_helper'

class AppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app = apps(:one)
    @space = spaces(:one)
    @org = orgs(:one)
  end

  test "should get index" do
    get space_apps_url(@org, @space)
    assert_response :success
  end

  test "should get new" do
    get new_space_apps_url(@space)
    assert_response :success
  end

  test "should create app" do
    assert_difference('App.count') do
      post apps_url, params: { app: { application_name: @app.application_name, application_uris: @app.application_uris, buildpack: @app.buildpack, details: @app.details, last_uploaded: @app.last_uploaded, limits: @app.limits, services: @app.services, space_id: @app.space_id, state: @app.state } }
    end

    assert_redirected_to app_path(App.last)
  end

  test "should show app" do
    get space_app_url(@space, @app)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_url(@app)
    assert_response :success
  end

  test "should update app" do
    patch app_url(@app), params: { app: { application_name: @app.application_name, application_uris: @app.application_uris, buildpack: @app.buildpack, details: @app.details, last_uploaded: @app.last_uploaded, limits: @app.limits, services: @app.services, space_id: @app.space_id, state: @app.state } }
    assert_redirected_to app_path(@app)
  end

  test "should destroy app" do
    assert_difference('App.count', -1) do
      delete app_url(@app)
    end

    assert_redirected_to apps_path
  end
end
