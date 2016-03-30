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

ActiveRecord::Schema.define(version: 20160330145354) do

  create_table "api_consoles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_keys", force: :cascade do |t|
    t.string   "api_access_token"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "api_v1_birds", force: :cascade do |t|
    t.string   "bird_name"
    t.string   "bird_scientific_name"
    t.string   "bird_genus"
    t.boolean  "bird_endangered"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "api_v1_sightings", force: :cascade do |t|
    t.integer  "sighting_bird_type"
    t.string   "sighting_bird_age"
    t.string   "sighting_activity"
    t.boolean  "sighting_has_nest"
    t.float    "sighting_latitude"
    t.float    "sighting_longitude"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
