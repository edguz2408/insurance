require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  test "should get messages" do
    get :messages
    assert_response :success
  end

end
