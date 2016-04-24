require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member = members(:one)
    @org = orgs(:one)
  end

  test "should get index" do
    get org_members_url(@member)
    assert_response :success
  end

  test "should get new" do
    get new_org_member_url(@org)
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post org_members_url(@org), params: { member: { email: 'email@example.com', org_id: @member.org_id, roles: [], space_id: @member.space_id } }
    end

    assert_redirected_to org_members_path(@org)
  end

  test "should show member" do
    get org_member_url(@org, @member)
    assert_response :success
  end

  test "should get edit" do
    get edit_org_member_url(@org, @member)
    assert_response :success
  end

  test "should update member" do
    patch org_member_url(@org, @member), params: { member: { email: @member.email, org_id: @member.org_id, roles: [], space_id: @member.space_id } }
    assert_redirected_to org_member_url(@member)
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete org_member_url(@org, @member)
    end

    assert_redirected_to org_members_path
  end
end
