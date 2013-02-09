require 'test_helper'

class SurveyControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get start" do
    get :start
    assert_response :success
  end

  test "should get survey" do
    get :survey
    assert_response :success
  end

  test "should get save" do
    get :save
    assert_response :success
  end

end
