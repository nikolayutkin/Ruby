require_relative "../test_helper.rb"

class LrControllerTest < ActionController::TestCase
  test "should get input" do
    get :input
    assert_response :success
  end

  test "should get html" do
    get :view, {val: '9000'}
    assert_equal response.content_type, "text/html"
  end

  test "should get xml" do
    get :view, {val: '9000', format: 'xml'}
    assert_equal response.content_type, "application/xml"
  end

end
