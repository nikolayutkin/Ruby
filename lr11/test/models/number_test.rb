require 'D:/PROGA/lr11/test/test_helper'

class NumberTest < ActiveSupport::TestCase
  test "should record unique data" do
    t = Number.new(:value => 999999, :power => 6)
	t.save
	n = Number.new(:value => 999999, :power => 6)
	assert !n.save
  end
  
  test "should get different data" do
    t = Number.new(:value => 999999, :power => 6)
	n = Number.new(:value => 888888, :power => 5)
	t.save
	n.save
	a = Number.find_by(value: 999999)
	b = Number.find_by(value: 888888)
	assert_not_equal a.power, b.power
  end
  
end
