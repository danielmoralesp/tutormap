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

ActiveRecord::Schema.define(version: 20170327183047) do

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cities", ["country_id"], name: "index_cities_on_country_id"

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "cargo"
    t.string   "empresa"
    t.string   "mes_inicio"
    t.string   "dia_inicio"
    t.string   "mes_fin"
    t.string   "dia_fin"
    t.string   "ubicacion"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "teacher_id"
  end

  add_index "experiences", ["teacher_id"], name: "index_experiences_on_teacher_id"

  create_table "services", force: :cascade do |t|
    t.integer  "type"
    t.integer  "academ_level"
    t.integer  "price_per_hour"
    t.integer  "min_hours"
    t.string   "time_anticipated"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "teacher_id"
    t.integer  "topic_id"
  end

  add_index "services", ["teacher_id"], name: "index_services_on_teacher_id"
  add_index "services", ["topic_id"], name: "index_services_on_topic_id"

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "phone"
    t.string   "image_url"
    t.boolean  "verify_bgd_check"
    t.boolean  "complete_exam"
    t.text     "about_me"
    t.string   "address"
    t.boolean  "verify_phone"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "role"
    t.integer  "user_id"
  end

  add_index "teachers", ["user_id"], name: "index_teachers_on_user_id"

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "topics", ["subject_id"], name: "index_topics_on_subject_id"

  create_table "tutorings", force: :cascade do |t|
    t.string   "place"
    t.integer  "num_hours"
    t.string   "hour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "teacher_id"
    t.integer  "city_id"
    t.integer  "topic_id"
  end

  add_index "tutorings", ["city_id"], name: "index_tutorings_on_city_id"
  add_index "tutorings", ["teacher_id"], name: "index_tutorings_on_teacher_id"
  add_index "tutorings", ["topic_id"], name: "index_tutorings_on_topic_id"
  add_index "tutorings", ["user_id"], name: "index_tutorings_on_user_id"

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role"
    t.string   "name"
    t.integer  "city_id"
  end

  add_index "users", ["city_id"], name: "index_users_on_city_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
