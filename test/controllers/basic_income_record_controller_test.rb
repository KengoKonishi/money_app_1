require 'test_helper'

class BasicIncomeRecordControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get basic_income_record_index_url
    assert_response :success
  end

  test "should get show" do
    get basic_income_record_show_url
    assert_response :success
  end

  test "should get new" do
    get basic_income_record_new_url
    assert_response :success
  end

  test "should get create" do
    get basic_income_record_create_url
    assert_response :success
  end

  test "should get edit" do
    get basic_income_record_edit_url
    assert_response :success
  end

  test "should get update" do
    get basic_income_record_update_url
    assert_response :success
  end

  test "should get destroy" do
    get basic_income_record_destroy_url
    assert_response :success
  end

end
