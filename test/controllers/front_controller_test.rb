require 'test_helper'

class FrontControllerTest < ActionDispatch::IntegrationTest
  test "should get greeting" do
    get front_greeting_url
    assert_response :success
  end

end
