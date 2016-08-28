require 'test_helper'

class MathematicsControllerTest < ActionController::TestCase
  test "should get prime" do
    get :prime
    assert_response :success
  end

  test "should get evenodd" do
    get :evenodd
    assert_response :success
  end

  test "should get palindrome" do
    get :palindrome
    assert_response :success
  end

end
