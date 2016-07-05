require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get menu" do
    get :menu
    assert_response :success
  end

  test "should get assessments" do
    get :assessments
    assert_response :success
  end

end
