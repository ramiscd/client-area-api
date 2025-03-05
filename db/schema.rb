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

ActiveRecord::Schema[7.1].define(version: 2025_03_05_174913) do
  create_table "applicants_status_histories", force: :cascade do |t|
    t.integer "application_id", null: false
    t.integer "status_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["application_id"], name: "index_applicants_status_histories_on_application_id"
    t.index ["status_id"], name: "index_applicants_status_histories_on_status_id"
  end

  create_table "applications", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "form_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["form_id"], name: "index_applications_on_form_id"
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "forms", force: :cascade do |t|
    t.string "country"
    t.string "question"
    t.boolean "document_passport"
    t.boolean "document_rg"
    t.boolean "payment"
    t.string "form_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.integer "application_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["application_id"], name: "index_statuses_on_application_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "applicants_status_histories", "applications"
  add_foreign_key "applicants_status_histories", "statuses"
  add_foreign_key "applications", "forms"
  add_foreign_key "applications", "users"
  add_foreign_key "statuses", "applications"
end
