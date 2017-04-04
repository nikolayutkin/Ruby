require 'test_helper'

class ResultTest < ActiveSupport::TestCase
  test 'should not save equale values' do
    Result.create(mas: 'testing_Марс_333')
    rec = Result.new(mas: 'testing_Марс_333')
    assert !rec.save
  end
end
