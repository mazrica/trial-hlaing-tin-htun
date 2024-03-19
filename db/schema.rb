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

ActiveRecord::Schema.define(version: 2021_10_18_085643) do

  create_table "issue_custom_details", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "issue_custom_id", null: false, comment: "課題カスタム項目値ID"
    t.integer "value", null: false, comment: "選択値(複数選択タイプ)"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "issue_custom_item_options", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "issue_custom_item_id", null: false, comment: "カスタム項目ID"
    t.string "label", null: false, comment: "選択肢の名称"
    t.integer "value", null: false, comment: "選択肢の値"
    t.integer "order_num", null: false, comment: "並び順"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "issue_custom_items", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "item_type", null: false, comment: "項目タイプ"
    t.string "name", null: false, comment: "項目名"
    t.integer "order_num", null: false, comment: "並び順"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "issue_customs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "issue_id", null: false, comment: "課題ID"
    t.bigint "issue_custom_item_id", null: false, comment: "課題カスタム項目ID"
    t.string "text", comment: "テキスト項目の値"
    t.integer "selected_value", comment: "選択値(単一選択タイプ)"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "issues", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "title", comment: "タイトル"
    t.text "content", comment: "本文"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
