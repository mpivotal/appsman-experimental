require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest

  setup do
    @org = orgs(:one)
  end

  test "should get home" do
    get root_url
    assert_redirected_to orgs_url
  end

  test "should redirect to orgs" do
    get root_url
    assert_redirected_to orgs_url
  end


  test "should redirect to new" do
    puts 'TODO'
    # get root_url
    # assert_redirected_to new_org_url
  end

end
