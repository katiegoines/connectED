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

ActiveRecord::Schema.define(version: 20171130000647) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.bigint "teacher_id"
    t.date "due"
    t.string "assignment_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_assignments_on_teacher_id"
  end

  create_table "cohorts", force: :cascade do |t|
    t.string "subject"
    t.string "period"
    t.bigint "teacher_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_cohorts_on_student_id"
    t.index ["teacher_id"], name: "index_cohorts_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cohort_id"
    t.bigint "submission_id"
    t.index ["cohort_id"], name: "index_students_on_cohort_id"
    t.index ["submission_id"], name: "index_students_on_submission_id"
  end

  create_table "submissions", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.string "category"
    t.string "link"
    t.bigint "student_id"
    t.boolean "submit"
    t.bigint "assignment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignment_id"], name: "index_submissions_on_assignment_id"
    t.index ["student_id"], name: "index_submissions_on_student_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.string "password_digest"
    t.integer "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "assignments", "teachers"
  add_foreign_key "cohorts", "students"
  add_foreign_key "cohorts", "teachers"
  add_foreign_key "students", "cohorts"
  add_foreign_key "students", "submissions"
  add_foreign_key "submissions", "assignments"
  add_foreign_key "submissions", "students"
end
