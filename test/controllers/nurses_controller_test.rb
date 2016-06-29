require 'test_helper'

class NursesControllerTest < ActionController::TestCase
  test "should get doassessment" do
    get :doassessment
    assert_response :success
  end

end
