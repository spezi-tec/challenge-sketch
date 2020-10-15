require 'test_helper'

class Api::V1::HelloWorldControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get api_v1_hello_world_show_url
    assert_response :success
  end

end
