require 'test_helper'

class CountsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get view" do
    get :view
    assert_response :success
  end

  test "should_get_equal" do
    get :view, {a: 130}
    res = [3, 7, 31, 127]
    assert_equal assigns[:result], res
  end
end
