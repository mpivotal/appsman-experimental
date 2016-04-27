require 'test_helper'

class SpacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @space = spaces(:one)
    @org = orgs(:one)
  end

  test "should get index" do
    get org_spaces_url(@space)
    assert_response :success
  end

  test "should get new" do
    get new_org_space_url(@org)
    assert_response :success
  end

  test "should create space" do
    assert_difference('Space.count') do
      post org_spaces_url(@org), params: { space: { name: @space.name, org_id: @space.org_id } }
    end

    assert_redirected_to org_spaces_path(@org)
  end

  test "should show space" do
    get space_path(@org, @space)
    assert_response :success
  end

  test "should get edit" do
    get edit_space_path(@org, @space)
    assert_response :success
  end

  test "should update space" do
    patch space_url(@space), params: { space: { org_id: @space.org_id } }
    assert_redirected_to space_url(@space)
  end

  test "should destroy space" do
    assert_difference('Space.count', -1) do
      delete url_for(@space), params: { org_id: @org.id }
    end
    assert_redirected_to org_spaces_path(@org)
  end
end
