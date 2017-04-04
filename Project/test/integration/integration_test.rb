require 'test_helper'
class UserFlowsTest < ActionDispatch::IntegrationTest
  fixtures :users
  test "login and browse site" do
# login via https
    get "/login/new"
    assert_response :success
    post_via_redirect "/login/create", :login => User.find_by_login(:one).login,
                      :password => User.find_by_login(:one).password
    assert_equal '/', path
  end
  test "not login and not browse site" do
# login via https
    post "/login/new"
    assert_response :success
    post_via_redirect "/login/create", :login => 'error',
                      :password => 'error'
    assert_equal '/login', path
  end
end
