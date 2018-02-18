# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151017160948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "username"
    t.string   "pin"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "device_id"
    t.boolean  "is_account_root", default: false, null: false
    t.string   "access_token",    default: ""
  end

  add_index "accounts", ["access_token"], name: "index_accounts_on_access_token", unique: true, using: :btree
  add_index "accounts", ["id", "device_id"], name: "one_root_user_per_device_id", unique: true, using: :btree

  create_table "api_keys", primary_key: "access_token", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "device_token"
  end

  add_index "api_keys", ["access_token"], name: "index_api_keys_on_access_token", unique: true, using: :btree
  add_index "api_keys", ["device_token"], name: "index_api_keys_on_device_token", unique: true, using: :btree

  create_table "csv_files", force: :cascade do |t|
    t.string   "csv_file_file_name"
    t.string   "csv_file_content_type"
    t.integer  "csv_file_file_size"
    t.datetime "csv_file_updated_at"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "address"
    t.datetime "ended_at"
    t.float    "lat",        null: false
    t.float    "lon",        null: false
    t.string   "name",       null: false
    t.datetime "started_at", null: false
    t.integer  "user_id",    null: false
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "kegerators", primary_key: "device_id", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "kegerators", ["device_id"], name: "index_kegerators_on_device_id", unique: true, using: :btree

  create_table "messages", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "password_digest"
    t.integer  "credit"
    t.string   "phoneNumber"
    t.string   "RFID"
    t.string   "device_token"
  end

  add_index "users", ["device_token"], name: "index_users_on_device_token", unique: true, using: :btree

end
