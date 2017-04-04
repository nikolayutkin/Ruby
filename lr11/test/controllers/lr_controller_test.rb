require 'D:/PROGA/lr11/test/test_helper'

class LrControllerTest < ActionController::TestCase
  test "should get input" do
    get :input
    assert_response :success
  end

  test "should get view" do
    get :view
    assert_response :success
  end

  test "should get different data" do
    get :view, {val: '9000'}
	v1 = assigns[:res]
    get :view, {val: '2048'}
	v2 = assigns[:res]
	assert_not_equal v1, v2
  end
end
