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

ActiveRecord::Schema.define(version: 20140407185614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: true do |t|
    t.date     "date"
    t.string   "name",           limit: 40
    t.integer  "rule_flags",     limit: 2,  default: 0, null: false
    t.integer  "p1_id",          limit: 2
    t.integer  "p2_id",          limit: 2
    t.integer  "p3_id",          limit: 2
    t.integer  "p4_id",          limit: 2
    t.integer  "p1_final_score"
    t.integer  "p2_final_score"
    t.integer  "p3_final_score"
    t.integer  "p4_final_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "games", ["name"], name: "index_games_on_name", using: :btree
  add_index "games", ["p1_id"], name: "index_games_on_p1_id", using: :btree
  add_index "games", ["p2_id"], name: "index_games_on_p2_id", using: :btree
  add_index "games", ["p3_id"], name: "index_games_on_p3_id", using: :btree
  add_index "games", ["p4_id"], name: "index_games_on_p4_id", using: :btree

  create_table "hands", force: true do |t|
    t.string   "round_name",    limit: 5
    t.integer  "game_id"
    t.integer  "p1_change"
    t.integer  "p2_change"
    t.integer  "p3_change"
    t.integer  "p4_change"
    t.integer  "p1_yaku",       limit: 8, default: 0, null: false
    t.integer  "p2_yaku",       limit: 8, default: 0, null: false
    t.integer  "p3_yaku",       limit: 8, default: 0, null: false
    t.integer  "p4_yaku",       limit: 8, default: 0, null: false
    t.boolean  "p1_is_yakuman"
    t.boolean  "p2_is_yakuman"
    t.boolean  "p3_is_yakuman"
    t.boolean  "p4_is_yakuman"
    t.binary   "dora"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hands", ["game_id", "round_name"], name: "index_hands_on_game_id_and_round_name", using: :btree
  add_index "hands", ["game_id"], name: "index_hands_on_game_id", using: :btree

  create_table "players", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players", ["id", "name"], name: "index_players_on_id_and_name", using: :btree

  add_foreign_key "games", "players", name: "p1_id_fk", column: "p1_id", dependent: :nullify
  add_foreign_key "games", "players", name: "p2_id_fk", column: "p2_id", dependent: :nullify
  add_foreign_key "games", "players", name: "p3_id_fk", column: "p3_id", dependent: :nullify
  add_foreign_key "games", "players", name: "p4_id_fk", column: "p4_id", dependent: :nullify

  add_foreign_key "hands", "games", name: "game_id_fk", dependent: :nullify

end
