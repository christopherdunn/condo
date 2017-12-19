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

ActiveRecord::Schema.define(version: 20171205012134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "budgets", force: :cascade do |t|
    t.string "oil"
    t.string "gas"
    t.string "electric"
    t.string "fees"
    t.string "assessments"
    t.string "water"
    t.string "insurance"
    t.string "accounting"
    t.string "repairs"
    t.string "landscaping"
    t.string "snow"
    t.string "miscellaneous"
    t.string "cleaning"
    t.string "taxes"
    t.string "waste_removal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "condo_documents", force: :cascade do |t|
    t.string "document"
    t.string "name"
    t.bigint "hoa_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hoa_id"], name: "index_condo_documents_on_hoa_id"
  end

  create_table "hoa_memberships", force: :cascade do |t|
    t.bigint "hoa_id", null: false
    t.bigint "user_id", null: false
    t.boolean "trustee", default: false, null: false
    t.boolean "admin", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hoa_id"], name: "index_hoa_memberships_on_hoa_id"
    t.index ["user_id"], name: "index_hoa_memberships_on_user_id"
  end

  create_table "hoas", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip", null: false
    t.integer "units", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.string "status"
    t.bigint "hoa_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hoa_id"], name: "index_projects_on_hoa_id"
  end

  create_table "repairs", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.string "status"
    t.bigint "hoa_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "repair_photo"
    t.index ["hoa_id"], name: "index_repairs_on_hoa_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "phone", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
