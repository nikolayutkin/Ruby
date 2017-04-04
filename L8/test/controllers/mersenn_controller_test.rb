require 'test_helper'
require 'prime'

class MersennControllerTest < ActionController::TestCase
  test "try" do
    @mersenncontroller = MainController.new
    @test = @mersenncontroller.check(100,100)
    assert_equal(nil, @test)
  end
end
