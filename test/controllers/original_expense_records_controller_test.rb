require 'test_helper'

class OriginalExpenseRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get original_expense_records_index_url
    assert_response :success
  end

  test "should get show" do
    get original_expense_records_show_url
    assert_response :success
  end

  test "should get new" do
    get original_expense_records_new_url
    assert_response :success
  end

  test "should get create" do
    get original_expense_records_create_url
    assert_response :success
  end

  test "should get edit" do
    get original_expense_records_edit_url
    assert_response :success
  end

  test "should get update" do
    get original_expense_records_update_url
    assert_response :success
  end

  test "should get destroy" do
    get original_expense_records_destroy_url
    assert_response :success
  end

end
