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

ActiveRecord::Schema.define(version: 20140518163239) do

  create_table "check_in_records", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "provider_id"
  end

  add_index "check_in_records", ["provider_id"], name: "index_check_in_records_on_provider_id"
  add_index "check_in_records", ["user_id", "provider_id"], name: "index_check_in_records_on_user_id_and_provider_id"
  add_index "check_in_records", ["user_id"], name: "index_check_in_records_on_user_id"

  create_table "malls", force: true do |t|
    t.string   "name"
    t.text     "location"
    t.string   "icon_image"
    t.float    "lat"
    t.float    "long"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "providers", force: true do |t|
    t.string   "name"
    t.text     "location"
    t.integer  "points"
    t.string   "beacon_id"
    t.string   "icon_image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mall_id"
  end

  add_index "providers", ["mall_id"], name: "index_providers_on_mall_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "display_name"
    t.string   "pic"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
