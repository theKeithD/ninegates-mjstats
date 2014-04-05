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

ActiveRecord::Schema.define(version: 20140405012747) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: true do |t|
    t.date     "date"
    t.string   "name"
    t.binary   "rule_flags"
    t.integer  "p1_id"
    t.integer  "p2_id"
    t.integer  "p3_id"
    t.integer  "p4_id"
    t.integer  "p1_final_score"
    t.integer  "p2_final_score"
    t.integer  "p3_final_score"
    t.integer  "p4_final_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "games", ["name"], name: "index_games_on_name", using: :btree

end
