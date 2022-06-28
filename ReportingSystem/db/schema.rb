# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_24_194834) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_categories", force: :cascade do |t|
    t.string "account_category_code"
    t.string "account_category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "group_id"
    t.bigint "sub_group_id"
    t.index ["group_id"], name: "index_account_categories_on_group_id"
    t.index ["sub_group_id"], name: "index_account_categories_on_sub_group_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.string "account_code"
    t.string "account_name"
    t.string "account_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "group_id"
    t.bigint "sub_group_id"
    t.bigint "account_category_id"
    t.index ["account_category_id"], name: "index_accounts_on_account_category_id"
    t.index ["group_id"], name: "index_accounts_on_group_id"
    t.index ["sub_group_id"], name: "index_accounts_on_sub_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "account_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "group_code"
  end

  create_table "sub_groups", force: :cascade do |t|
    t.string "code_sub_group"
    t.string "name_sub_group"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "group_id"
    t.index ["group_id"], name: "index_sub_groups_on_group_id"
  end

  add_foreign_key "account_categories", "groups"
  add_foreign_key "account_categories", "sub_groups"
  add_foreign_key "accounts", "account_categories"
  add_foreign_key "accounts", "groups"
  add_foreign_key "accounts", "sub_groups"
  add_foreign_key "sub_groups", "groups"
end
