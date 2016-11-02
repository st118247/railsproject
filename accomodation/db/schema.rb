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

ActiveRecord::Schema.define(version: 20161101113837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dorm_details", force: :cascade do |t|
    t.integer  "versionid"
    t.string   "dorm"
    t.string   "roomsize"
    t.text     "details"
    t.integer  "rent"
    t.text     "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "category"
  end

  create_table "quotations", force: :cascade do |t|
    t.text     "quote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_quotations_on_user_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roomlists", force: :cascade do |t|
    t.string   "cat"
    t.string   "dorm"
    t.string   "room"
    t.string   "abc"
    t.string   "studentid"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "versionid"
  end

  create_table "studenthousinginfos", force: :cascade do |t|
    t.integer  "version"
    t.string   "category"
    t.integer  "roomsize"
    t.integer  "rent"
    t.text     "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "status"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role_id"
    t.string   "banstatus"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["role_id"], name: "index_users_on_role_id", using: :btree
  end

  add_foreign_key "quotations", "users"
  add_foreign_key "users", "roles"
end
