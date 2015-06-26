require 'test_helper'

class ListadoClinicasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
