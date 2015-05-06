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

ActiveRecord::Schema.define(version: 20150505224503) do

  create_table "crops", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fertilizations", force: :cascade do |t|
    t.decimal  "nitrogen"
    t.decimal  "rate"
    t.decimal  "density"
    t.datetime "soil_date"
    t.string   "soil_condition"
    t.text     "notes"
    t.decimal  "recommended"
    t.integer  "goal_id"
    t.integer  "fertilizer_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "fertilizations", ["fertilizer_id"], name: "index_fertilizations_on_fertilizer_id"
  add_index "fertilizations", ["goal_id"], name: "index_fertilizations_on_goal_id"

  create_table "fertilizers", force: :cascade do |t|
    t.string   "name"
    t.integer  "concentration"
    t.decimal  "density"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "fields", force: :cascade do |t|
    t.string   "name"
    t.integer  "acres"
    t.integer  "farm_id"
    t.integer  "crop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "fields", ["crop_id"], name: "index_fields_on_crop_id"
  add_index "fields", ["farm_id"], name: "index_fields_on_farm_id"

  create_table "formulas", force: :cascade do |t|
    t.string   "name"
    t.integer  "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.integer  "season"
    t.integer  "crop_yield"
    t.integer  "nitrogen_credits"
    t.decimal  "recommended_nitrogen"
    t.decimal  "actual_crop_yield"
    t.string   "remaining_nitrogen"
    t.string   "applied_nitrogen"
    t.integer  "field_id"
    t.integer  "formula_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "goals", ["field_id"], name: "index_goals_on_field_id"
  add_index "goals", ["formula_id"], name: "index_goals_on_formula_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_hash"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
