require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get result" do
    get reports_result_url
    assert_response :success
  end

end
