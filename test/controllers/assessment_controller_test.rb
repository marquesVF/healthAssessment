require 'test_helper'

class AssessmentControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get do" do
    get :do
    assert_response :success
  end

  test "should get save" do
    get :save
    assert_response :success
  end

end
