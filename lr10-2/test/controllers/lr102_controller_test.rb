require_relative "../test_helper.rb"

class Lr102ControllerTest < ActionController::TestCase
  test "should get input" do
    get :input
    assert_response :success
  end

  test "should get proxy" do
    get :proxy
    assert_response :success
  end

  
  test "should get html" do
    get :proxy, {val: '9000', format: 'html'}
    assert_equal response.content_type, "text/html"
  end

  test "should get xml" do
    get :proxy, {val: '9000', format: 'xml'}
    assert_equal response.content_type, "application/xml"
  end

end
