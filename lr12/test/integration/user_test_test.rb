require_relative "../test_helper.rb"

class UserTestTest < ActionDispatch::IntegrationTest
  test "should login" do
    User.create(login: 'tlog', pswd: 'tpswd')
    get "/lr/login", {l: 'tlog', p: 'tpswd'}
    get "/lr/out", {val: '9000'}
    assert_response :success
  end

  test "should not work unlogged" do
    get "/lr/exit"
    get "/lr/out", {val: '9000'}
    assert redirect?
    assert_redirected_to "/lr/auth"
   end

  test "should not allow update unlogged" do
    User.create(login: 'tlog', pswd: 'tpswd')
    get "/lr/login", {l: 'tlog', p: 'tpswd'}
    get "/lr/exit"
	get "/users/1/edit"
    assert_redirected_to "/lr/auth"
  end

end
