require "test_helper"

class SequenceControllerTest < ActionDispatch::IntegrationTest
  test 'should show enter page' do
    get sequence_input_url
    assert_response :success
    assert_template 'sequence/input'
    assert_select 'form'
  end

  test 'should show calculated result' do
    get sequence_output_url, params: { n: '3', begseq: '[1, 2, 3]'}
    assert_response :success
    assert_not_nil assigns[:ready_numbers]
    assert_template 'sequence/output'
  end

  test 'should calculate different result' do
    get sequence_output_url, params: { n: 2, begseq: '[2, 3]' }
    assert_response :success
    first_res = assigns[:ready_numbers]
    get sequence_output_url, params: { n: '3', begseq: '[1, 2, 3]' }
    second_res = assigns[:ready_numbers]
    assert_not_equal first_res, second_res
  end

end
