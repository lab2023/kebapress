require 'test_helper'

module Kebapress
  class DashboardControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end

  end
end
