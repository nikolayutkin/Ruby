require_relative 'five.rb'
require 'minitest/autorun'
class Testfive < Minitest::Test
  def test_1
    assert_in_delta(-0.571, yp(1.0,1.0), 10e-3, 'неверно')
  end
  def test_2
    assert_in_delta(-0.103, yp(2.0,2.0), 10e-3, 'неверно')
  end
  def test_3
    assert_in_delta(0.173, yp(-3.0,-1.0), 10e-3, 'неверно')
  end
  def test_4
    assert_equal(yp(1.0,1.0), -0.5714285714285714, 'неверно')
  end
end