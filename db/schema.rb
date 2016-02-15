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

ActiveRecord::Schema.define(version: 20160214230355) do

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "department"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professors", force: true do |t|
    t.string   "name"
    t.integer  "student_id"
    t.string   "office"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "professors", ["student_id"], name: "index_professors_on_student_id"

  create_table "registrations", force: true do |t|
    t.integer  "student_id"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "registrations", ["section_id"], name: "index_registrations_on_section_id"
  add_index "registrations", ["student_id"], name: "index_registrations_on_student_id"

  create_table "sections", force: true do |t|
    t.integer  "course_id"
    t.integer  "professor_id"
    t.integer  "number"
    t.string   "location"
    t.time     "sectionTime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sections", ["course_id"], name: "index_sections_on_course_id"
  add_index "sections", ["professor_id"], name: "index_sections_on_professor_id"

  create_table "sections_students", force: true do |t|
    t.integer  "section_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sections_students", ["section_id"], name: "index_sections_students_on_section_id"
  add_index "sections_students", ["student_id"], name: "index_sections_students_on_student_id"

  create_table "students", force: true do |t|
    t.string   "name"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students_sections", force: true do |t|
    t.integer  "student_id"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students_sections", ["section_id"], name: "index_students_sections_on_section_id"
  add_index "students_sections", ["student_id"], name: "index_students_sections_on_student_id"

end
