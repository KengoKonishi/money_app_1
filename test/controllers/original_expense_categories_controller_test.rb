require 'test_helper'

class OriginalExpenseCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get original_expense_categories_index_url
    assert_response :success
  end

  test "should get show" do
    get original_expense_categories_show_url
    assert_response :success
  end

  test "should get new" do
    get original_expense_categories_new_url
    assert_response :success
  end

  test "should get create" do
    get original_expense_categories_create_url
    assert_response :success
  end

  test "should get edit" do
    get original_expense_categories_edit_url
    assert_response :success
  end

  test "should get update" do
    get original_expense_categories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get original_expense_categories_destroy_url
    assert_response :success
  end

end
