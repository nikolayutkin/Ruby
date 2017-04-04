require 'test_helper'
class ProjectControllerTest < ActionController::TestCase
  test "should get input" do
    get :input
    assert_response :success
  end
  test "should get view" do
    get :view
    assert_response :success
  end
  test "should get res" do
    get :view, {ttt: "testing_Марс_333"}#поле ввода
    assert_equal assigns[:result], ['testing', 'Марс', '333']#правильный результат
  end
end
