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

ActiveRecord::Schema.define(version: 20150410062159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "accounts", force: :cascade do |t|
    t.string   "username"
    t.string   "pin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "device_id"
    t.boolean  "is_account_root"
  end

  add_index "accounts", ["id", "device_id"], name: "one_root_user_per_device_id", unique: true, using: :btree

  create_table "api_keys", force: :cascade do |t|
    t.string   "access_token"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "kegerators", primary_key: "device_id", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "kegerators", ["device_id"], name: "index_kegerators_on_device_id", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 255
    t.string   "email",           limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_hash",   limit: 255
    t.string   "password_salt",   limit: 255
    t.string   "password_digest", limit: 255
    t.integer  "credit"
    t.string   "phoneNumber",     limit: 255
    t.string   "RFID",            limit: 255
    t.string   "device_token",    limit: 255
  end

  add_index "users", ["device_token"], name: "index_users_on_device_token", unique: true, using: :btree

end
