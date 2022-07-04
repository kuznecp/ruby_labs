require "test_helper"

class SequenceControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get sequence_input_url
    assert_response :success
  end

  test "should get view" do
    get sequence_view_url
    assert_response :success
  end

  test 'should get -1 for negative number' do
    get sequence_view_url, params: { v1: -1, v2: '' }
    assert_equal assigns[:result], -1
  end

  test 'should get -1 for zero' do
    get sequence_view_url, params: { v1: 0, v2: '23 2' }
    assert_equal assigns[:result], -1
  end

  test 'should get 0 for no-match string' do
    get sequence_view_url, params: { v1: 3, v2: '2 5 7' }
    assert_equal assigns[:result], 0
  end

  test 'should get 1 for full-match string' do
    get sequence_view_url, params: { v1: 3, v2: '1 9 4' }
    assert_equal assigns[:result], 1
  end

  test 'should get 2 for v2 string string' do
    get sequence_view_url, params: { v1: 4, v2: '1 9 2 1' }
    assert_equal assigns[:result], 2
  end

  test 'should get -1 for v1 not equal v2' do
    get sequence_view_url, params: { v1: 3, v2: '23 2' }
    assert_equal assigns[:result], -1
  end
end
