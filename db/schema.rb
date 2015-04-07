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

ActiveRecord::Schema.define(version: 20150407013318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "username"
    t.string   "pin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_keys", force: :cascade do |t|
    t.string   "access_token"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "events", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "address",    limit: 255
    t.datetime "ended_at"
    t.float    "lat",                    null: false
    t.float    "lon",                    null: false
    t.string   "name",       limit: 255, null: false
    t.datetime "started_at",             null: false
    t.integer  "user_id",                null: false
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "in_app_purchase_products", force: :cascade do |t|
    t.string   "product_identifier", limit: 255,                null: false
    t.string   "type",               limit: 255,                null: false
    t.string   "title",              limit: 255,                null: false
    t.string   "description",        limit: 255
    t.float    "price"
    t.string   "price_locale",       limit: 255
    t.boolean  "is_enabled",                     default: true
    t.tsvector "tsv"
  end

  add_index "in_app_purchase_products", ["product_identifier"], name: "in_app_purchase_products_product_identifier_index", using: :btree
  add_index "in_app_purchase_products", ["tsv"], name: "in_app_purchase_products_tsv_index", using: :gin
  add_index "in_app_purchase_products", ["type"], name: "in_app_purchase_products_type_index", using: :btree

  create_table "in_app_purchase_receipts", force: :cascade do |t|
    t.integer  "quantity"
    t.string   "product_id",                  limit: 255, null: false
    t.string   "transaction_id",              limit: 255, null: false
    t.datetime "purchase_date",                           null: false
    t.string   "original_transaction_id",     limit: 255
    t.datetime "original_purchase_date"
    t.string   "app_item_id",                 limit: 255
    t.string   "version_external_identifier", limit: 255
    t.string   "bid",                         limit: 255
    t.string   "bvrs",                        limit: 255
    t.inet     "ip_address"
    t.datetime "created_at"
    t.tsvector "tsv"
  end

  add_index "in_app_purchase_receipts", ["app_item_id"], name: "in_app_purchase_receipts_app_item_id_index", using: :btree
  add_index "in_app_purchase_receipts", ["product_id"], name: "in_app_purchase_receipts_product_id_index", using: :btree
  add_index "in_app_purchase_receipts", ["transaction_id"], name: "in_app_purchase_receipts_transaction_id_index", using: :btree
  add_index "in_app_purchase_receipts", ["tsv"], name: "in_app_purchase_receipts_tsv_index", using: :gin

  create_table "in_app_purchase_schema_info", id: false, force: :cascade do |t|
    t.integer "version", default: 0, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsstand_schema_info", id: false, force: :cascade do |t|
    t.integer "version", default: 0, null: false
  end

  create_table "passbook_registrations", force: :cascade do |t|
    t.integer  "pass_id",                   limit: 8,   null: false
    t.string   "device_library_identifier", limit: 255
    t.string   "push_token",                limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "passbook_registrations", ["device_library_identifier"], name: "passbook_registrations_device_library_identifier_index", using: :btree

  create_table "passbook_schema_info", id: false, force: :cascade do |t|
    t.integer "version", default: 0, null: false
  end

  create_table "push_notification_devices", force: :cascade do |t|
    t.string   "token",      limit: 255
    t.string   "alias",      limit: 255
    t.integer  "badge",                  default: 0,     null: false
    t.string   "locale",     limit: 255
    t.string   "language",   limit: 255
    t.string   "timezone",   limit: 255, default: "UTC"
    t.inet     "ip_address"
    t.float    "lat"
    t.float    "lng"
    t.text     "tags",                                                array: true
    t.tsvector "tsv"
  end

  add_index "push_notification_devices", ["alias"], name: "push_notification_devices_alias_index", using: :btree
  add_index "push_notification_devices", ["lat", "lng"], name: "push_notification_devices_lat_lng_index", using: :btree
  add_index "push_notification_devices", ["token"], name: "push_notification_devices_token_index", using: :btree
  add_index "push_notification_devices", ["token"], name: "push_notification_devices_token_key", unique: true, using: :btree
  add_index "push_notification_devices", ["tsv"], name: "push_notification_devices_tsv_index", using: :gin

  create_table "push_notification_schema_info", id: false, force: :cascade do |t|
    t.integer "version", default: 0, null: false
  end

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
