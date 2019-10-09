# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_09_185052) do

  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string "name"
    t.string "subject"
    t.string "specialty"
    t.integer "hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "instructor_id", null: false
    t.integer "admin_id", null: false
    t.datetime "date"
    t.datetime "time"
    t.boolean "home"
    t.string "subject"
    t.string "location"
    t.string "instruction"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admin_id"], name: "index_sessions_on_admin_id"
    t.index ["instructor_id"], name: "index_sessions_on_instructor_id"
    t.index ["student_id"], name: "index_sessions_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "school_id"
    t.string "reason"
    t.datetime "date"
    t.integer "hours"
    t.string "school"
    t.integer "grade"
    t.boolean "sped"
    t.string "counselor_info"
    t.string "guardian"
    t.string "address"
    t.string "home_no"
    t.string "cell"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "sessions", "admins"
  add_foreign_key "sessions", "instructors"
  add_foreign_key "sessions", "students"
end
