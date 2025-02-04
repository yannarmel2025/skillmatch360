# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_02_04_172931) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "assessments", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.bigint "candidate_id", null: false
    t.bigint "assessment_id", null: false
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessment_id"], name: "index_feedbacks_on_assessment_id"
    t.index ["candidate_id"], name: "index_feedbacks_on_candidate_id"
  end

  create_table "skill_reports", force: :cascade do |t|
    t.bigint "candidate_id", null: false
    t.bigint "assessment_id", null: false
    t.bigint "skill_id", null: false
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessment_id"], name: "index_skill_reports_on_assessment_id"
    t.index ["candidate_id"], name: "index_skill_reports_on_candidate_id"
    t.index ["skill_id"], name: "index_skill_reports_on_skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "feedbacks", "assessments"
  add_foreign_key "feedbacks", "candidates"
  add_foreign_key "skill_reports", "assessments"
  add_foreign_key "skill_reports", "candidates"
  add_foreign_key "skill_reports", "skills"
end
