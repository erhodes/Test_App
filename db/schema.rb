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

ActiveRecord::Schema.define(version: 20140212010359) do

  create_table "active_missions", force: true do |t|
    t.integer  "agent_id"
    t.integer  "mission_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agents", force: true do |t|
    t.string   "name"
    t.integer  "aim"
    t.integer  "stealth"
    t.integer  "fortitude"
    t.integer  "deception"
    t.integer  "perception"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "missions", force: true do |t|
    t.string   "description"
    t.integer  "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
