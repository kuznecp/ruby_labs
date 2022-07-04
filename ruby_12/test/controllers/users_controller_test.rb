require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test 'should get index' do
    get users_url
    assert_response :success
  end

  test 'should get new' do
    get new_user_url
    assert_response :success
  end

  test 'should show user' do
    get user_url(@user)
    assert_redirected_to session_login_url
  end

  test 'should get edit' do
    get edit_user_url(@user)
    assert_redirected_to session_login_url
  end

  test 'should update user' do
    patch user_url(@user),
          params: { user: { last_login: @user.last_login, name: @user.name, password_digest: @user.password_digest } }
    assert_redirected_to session_login_url
  end

  test 'should destroy user' do
    before = User.count
    delete user_url(@user)
    assert_equal User.count, before

    assert_redirected_to session_login_url
  end
end
