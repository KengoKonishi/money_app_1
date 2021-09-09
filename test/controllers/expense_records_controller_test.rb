require 'test_helper'

class ExpenseRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get expense_records_index_url
    assert_response :success
  end

  test "should get show" do
    get expense_records_show_url
    assert_response :success
  end

  test "should get new" do
    get expense_records_new_url
    assert_response :success
  end

  test "should get create" do
    get expense_records_create_url
    assert_response :success
  end

end
