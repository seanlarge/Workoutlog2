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

ActiveRecord::Schema.define(version: 20141027194331) do

  create_table "athletes", force: true do |t|
    t.integer  "age"
    t.string   "height"
    t.string   "weight"
    t.string   "body_mass_index"
    t.string   "blood_pressure"
    t.integer  "cholesterol"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender"
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false, null: false
  end

  add_index "athletes", ["email"], name: "index_athletes_on_email", unique: true
  add_index "athletes", ["remember_token"], name: "index_athletes_on_remember_token"

  create_table "movements", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "equipment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wod_movements", force: true do |t|
    t.integer  "wod_id",      null: false
    t.integer  "movement_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wods", force: true do |t|
    t.boolean  "pr"
    t.string   "score"
    t.boolean  "benchmark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
