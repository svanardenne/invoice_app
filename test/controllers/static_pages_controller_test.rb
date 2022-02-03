require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = 'Invoice App'
  end

  test 'Get Home Page' do
    get root_path
    assert_response :success
    assert_select 'title', "Home | #{@base_title}"
  end
end
