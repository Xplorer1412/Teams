require 'test_helper'

class PheonixControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pheonix_new_url
    assert_response :success
  end

end
