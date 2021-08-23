require 'test_helper'

class IncomeRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get income_records_index_url
    assert_response :success
  end

  test "should get show" do
    get income_records_show_url
    assert_response :success
  end

  test "should get create_record" do
    get income_records_create_record_url
    assert_response :success
  end

end
