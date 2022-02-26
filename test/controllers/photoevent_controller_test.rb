require 'test_helper'

class PhotoeventControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get photoevent_create_url
    assert_response :success
  end

end
