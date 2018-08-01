require 'test_helper'

class MyinfoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get myinfo_index_url
    assert_response :success
  end

end
