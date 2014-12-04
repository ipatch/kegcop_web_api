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

ActiveRecord::Schema.define(version: 20141102175857) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "events", force: true do |t|
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

  create_table "in_app_purchase_products", force: true do |t|
    t.string   "product_identifier",                null: false
    t.string   "type",                              null: false
    t.string   "title",                             null: false
    t.string   "description"
    t.float    "price"
    t.string   "price_locale"
    t.boolean  "is_enabled",         default: true
    t.tsvector "tsv"
  end

  add_index "in_app_purchase_products", ["product_identifier"], name: "in_app_purchase_products_product_identifier_index", using: :btree
  add_index "in_app_purchase_products", ["tsv"], name: "in_app_purchase_products_tsv_index", using: :gin
  add_index "in_app_purchase_products", ["type"], name: "in_app_purchase_products_type_index", using: :btree

  create_table "in_app_purchase_receipts", force: true do |t|
    t.integer  "quantity"
    t.string   "product_id",                  null: false
    t.string   "transaction_id",              null: false
    t.datetime "purchase_date",               null: false
    t.string   "original_transaction_id"
    t.datetime "original_purchase_date"
    t.string   "app_item_id"
    t.string   "version_external_identifier"
    t.string   "bid"
    t.string   "bvrs"
    t.inet     "ip_address"
    t.datetime "created_at"
    t.tsvector "tsv"
  end

  add_index "in_app_purchase_receipts", ["app_item_id"], name: "in_app_purchase_receipts_app_item_id_index", using: :btree
  add_index "in_app_purchase_receipts", ["product_id"], name: "in_app_purchase_receipts_product_id_index", using: :btree
  add_index "in_app_purchase_receipts", ["transaction_id"], name: "in_app_purchase_receipts_transaction_id_index", using: :btree
  add_index "in_app_purchase_receipts", ["tsv"], name: "in_app_purchase_receipts_tsv_index", using: :gin

  create_table "in_app_purchase_schema_info", id: false, force: true do |t|
    t.integer "version", default: 0, null: false
  end

  create_table "messages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsstand_issues", force: true do |t|
    t.string   "name"
    t.string   "summary"
    t.text     "tags",         array: true
    t.hstore   "metadata"
    t.hstore   "cover_urls"
    t.text     "asset_urls",   array: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "published_at"
    t.datetime "expires_at"
    t.tsvector "tsv"
  end

  add_index "newsstand_issues", ["name"], name: "newsstand_issues_name_index", using: :btree
  add_index "newsstand_issues", ["name"], name: "newsstand_issues_name_key", unique: true, using: :btree
  add_index "newsstand_issues", ["published_at"], name: "newsstand_issues_published_at_index", using: :btree
  add_index "newsstand_issues", ["tsv"], name: "newsstand_issues_tsv_index", using: :gin

  create_table "newsstand_schema_info", id: false, force: true do |t|
    t.integer "version", default: 0, null: false
  end

  create_table "passbook_passes", force: true do |t|
    t.string   "pass_type_identifier"
    t.string   "serial_number"
    t.string   "authentication_token"
    t.hstore   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.tsvector "tsv"
  end

  add_index "passbook_passes", ["pass_type_identifier"], name: "passbook_passes_pass_type_identifier_index", using: :btree
  add_index "passbook_passes", ["pass_type_identifier"], name: "passbook_passes_pass_type_identifier_key", unique: true, using: :btree
  add_index "passbook_passes", ["serial_number"], name: "passbook_passes_serial_number_index", using: :btree
  add_index "passbook_passes", ["tsv"], name: "passbook_passes_tsv_index", using: :gin

  create_table "passbook_registrations", force: true do |t|
    t.integer  "pass_id",                   limit: 8, null: false
    t.string   "device_library_identifier"
    t.string   "push_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "passbook_registrations", ["device_library_identifier"], name: "passbook_registrations_device_library_identifier_index", using: :btree

  create_table "passbook_schema_info", id: false, force: true do |t|
    t.integer "version", default: 0, null: false
  end

  create_table "push_notification_devices", force: true do |t|
    t.string   "token"
    t.string   "alias"
    t.integer  "badge",      default: 0,     null: false
    t.string   "locale"
    t.string   "language"
    t.string   "timezone",   default: "UTC"
    t.inet     "ip_address"
    t.float    "lat"
    t.float    "lng"
    t.text     "tags",                                    array: true
    t.tsvector "tsv"
  end

  add_index "push_notification_devices", ["alias"], name: "push_notification_devices_alias_index", using: :btree
  add_index "push_notification_devices", ["lat", "lng"], name: "push_notification_devices_lat_lng_index", using: :btree
  add_index "push_notification_devices", ["token"], name: "push_notification_devices_token_index", using: :btree
  add_index "push_notification_devices", ["token"], name: "push_notification_devices_token_key", unique: true, using: :btree
  add_index "push_notification_devices", ["tsv"], name: "push_notification_devices_tsv_index", using: :gin

  create_table "push_notification_schema_info", id: false, force: true do |t|
    t.integer "version", default: 0, null: false
  end

  create_table "users", force: true do |t|
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
