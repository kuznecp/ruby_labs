require 'test_helper'
require 'nokogiri'

class TvSetControllerTest < ActionDispatch::IntegrationTest
    test 'should get parse' do
      get tv_set_parse_url
      assert_response :success
    end

    test 'test url xslt' do
      get '/'
      assert body.include?('Телевизор LG OLED55C1 55')
    end
end
