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

ActiveRecord::Schema.define(version: 20201214144246) do

  create_table "average_caches", force: :cascade do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "avg",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "casts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "cast"
    t.string   "role"
    t.integer  "script_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "script_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["script_id"], name: "index_comments_on_script_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "rates", force: :cascade do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "stars",         null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["rateable_id", "rateable_type"], name: "index_rates_on_rateable_id_and_rateable_type"
    t.index ["rater_id"], name: "index_rates_on_rater_id"
  end

  create_table "rating_caches", force: :cascade do |t|
    t.integer  "cacheable_id"
    t.string   "cacheable_type"
    t.float    "avg",            null: false
    t.integer  "qty",            null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["cacheable_id", "cacheable_type"], name: "index_rating_caches_on_cacheable_id_and_cacheable_type"
  end

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
    t.string   "hints_1"
    t.string   "hints_2"
    t.string   "hints_3"
    t.string   "hints_4"
    t.string   "hints_5"
    t.string   "difficulty"
    t.string   "victory_conditions_1"
    t.string   "victory_conditions_2"
    t.string   "victory_conditions_3"
    t.string   "victory_conditions_4"
    t.string   "victory_conditions_5"
    t.string   "created_by"
    t.index ["user_id"], name: "index_scripts_on_user_id"
  end

  create_table "tragedy_sets", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tragedy_sets_on_user_id"
  end

  create_table "tsets", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "attachment_1_file_name"
    t.string   "attachment_1_content_type"
    t.integer  "attachment_1_file_size"
    t.datetime "attachment_1_updated_at"
    t.text     "description_1"
    t.text     "description_2"
    t.text     "description_3"
    t.text     "description_4"
    t.text     "description_5"
    t.text     "description_6"
    t.text     "description_7"
    t.text     "description_8"
    t.string   "created_by"
    t.index ["user_id"], name: "index_tsets_on_user_id"
  end

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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
