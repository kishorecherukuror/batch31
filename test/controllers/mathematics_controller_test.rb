require 'test_helper'

class MathematicsControllerTest < ActionController::TestCase
  test "should get fibonacci" do
    get :fibonacci
    assert_response :success
  end

end
