require 'test_helper'

class BasicExpenseRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get basic_expense_records_index_url
    assert_response :success
  end

  test "should get show" do
    get basic_expense_records_show_url
    assert_response :success
  end

  test "should get new" do
    get basic_expense_records_new_url
    assert_response :success
  end

  test "should get create" do
    get basic_expense_records_create_url
    assert_response :success
  end

  test "should get edit" do
    get basic_expense_records_edit_url
    assert_response :success
  end

  test "should get update" do
    get basic_expense_records_update_url
    assert_response :success
  end

  test "should get destroy" do
    get basic_expense_records_destroy_url
    assert_response :success
  end

end
