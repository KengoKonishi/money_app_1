# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_09_231204) do

  create_table "basic_expense_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "basic_expense_records", force: :cascade do |t|
    t.integer "user_id"
    t.integer "money"
    t.integer "basic_expense_category_id"
    t.string "memo"
    t.date "registerdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["basic_expense_category_id"], name: "index_basic_expense_records_on_basic_expense_category_id"
    t.index ["user_id"], name: "index_basic_expense_records_on_user_id"
  end

  create_table "basic_income_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "basic_income_records", force: :cascade do |t|
    t.integer "user_id"
    t.integer "money"
    t.integer "basic_income_category_id"
    t.string "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "registerdate"
    t.index ["basic_income_category_id"], name: "index_basic_income_records_on_basic_income_category_id"
    t.index ["user_id"], name: "index_basic_income_records_on_user_id"
  end

  create_table "expense_records", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "income_records", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "original_expense_categories", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_original_expense_categories_on_user_id"
  end

  create_table "original_expense_records", force: :cascade do |t|
    t.integer "user_id"
    t.integer "money"
    t.integer "original_expense_category_id"
    t.string "memo"
    t.date "registerdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["original_expense_category_id"], name: "index_original_expense_records_on_original_expense_category_id"
    t.index ["user_id"], name: "index_original_expense_records_on_user_id"
  end

  create_table "original_income_categories", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_original_income_categories_on_user_id"
  end

  create_table "original_income_records", force: :cascade do |t|
    t.integer "user_id"
    t.integer "money"
    t.integer "original_income_category_id"
    t.string "memo"
    t.date "registerdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["original_income_category_id"], name: "index_original_income_records_on_original_income_category_id"
    t.index ["user_id"], name: "index_original_income_records_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
