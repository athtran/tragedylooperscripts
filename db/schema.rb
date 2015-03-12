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

ActiveRecord::Schema.define(version: 20150312015858) do

  create_table "average_caches", force: :cascade do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "avg",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "script_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["script_id"], name: "index_comments_on_script_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "rates", force: :cascade do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "stars",         null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rates", ["rateable_id", "rateable_type"], name: "index_rates_on_rateable_id_and_rateable_type"
  add_index "rates", ["rater_id"], name: "index_rates_on_rater_id"

  create_table "rating_caches", force: :cascade do |t|
    t.integer  "cacheable_id"
    t.string   "cacheable_type"
    t.float    "avg",            null: false
    t.integer  "qty",            null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rating_caches", ["cacheable_id", "cacheable_type"], name: "index_rating_caches_on_cacheable_id_and_cacheable_type"

  create_table "scripts", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "user_id"
    t.string   "cast"
    t.string   "incident"
    t.string   "main_plot"
    t.string   "subplot_1"
    t.string   "subplot_2"
    t.string   "tragedy_set"
    t.string   "num_loops"
    t.string   "days_loop"
    t.string   "special_rule"
    t.string   "cast_1"
    t.string   "role_1"
    t.string   "cast_2"
    t.string   "role_2"
    t.string   "cast_3"
    t.string   "role_3"
    t.string   "cast_4"
    t.string   "role_4"
    t.string   "cast_5"
    t.string   "role_5"
    t.string   "cast_6"
    t.string   "role_6"
    t.string   "cast_7"
    t.string   "role_7"
    t.string   "cast_8"
    t.string   "role_8"
    t.string   "cast_9"
    t.string   "role_9"
    t.string   "cast_10"
    t.string   "role_10"
    t.string   "cast_11"
    t.string   "role_11"
    t.string   "cast_12"
    t.string   "role_12"
    t.string   "day_1"
    t.string   "culprit_1"
    t.string   "day_2"
    t.string   "culprit_2"
    t.string   "day_3"
    t.string   "culprit_3"
    t.string   "day_4"
    t.string   "culprit_4"
    t.string   "day_5"
    t.string   "culprit_5"
    t.string   "day_6"
    t.string   "culprit_6"
    t.string   "day_7"
    t.string   "culprit_7"
    t.string   "day_8"
    t.string   "culprit_8"
    t.string   "victory_conditions"
    t.text     "hints_1"
    t.text     "hints_2"
    t.text     "hints_3"
    t.text     "hints_4"
    t.text     "hints_5"
    t.string   "difficulty"
    t.text     "victory_conditions_1"
    t.text     "victory_conditions_2"
    t.text     "victory_conditions_3"
    t.text     "victory_conditions_4"
    t.text     "victory_conditions_5"
  end

  add_index "scripts", ["user_id"], name: "index_scripts_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
