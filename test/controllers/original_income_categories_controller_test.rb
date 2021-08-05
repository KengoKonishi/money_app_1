require 'test_helper'

class OriginalIncomeCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get original_income_categories_index_url
    assert_response :success
  end

  test "should get show" do
    get original_income_categories_show_url
    assert_response :success
  end

  test "should get new" do
    get original_income_categories_new_url
    assert_response :success
  end

  test "should get create" do
    get original_income_categories_create_url
    assert_response :success
  end

  test "should get edit" do
    get original_income_categories_edit_url
    assert_response :success
  end

  test "should get update" do
    get original_income_categories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get original_income_categories_destroy_url
    assert_response :success
  end

end
