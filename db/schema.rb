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

ActiveRecord::Schema.define(version: 20160114221337) do

  create_table "wines", force: :cascade do |t|
    t.string   "name",         null: false
    t.integer  "price_min"
    t.integer  "price_max"
    t.integer  "price_retail"
    t.integer  "api_id",       null: false
    t.integer  "year"
    t.string   "type"
    t.string   "url"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "wines", ["api_id", "name"], name: "index_wines_on_api_id_and_name", unique: true
  add_index "wines", ["price_min", "price_max", "price_retail"], name: "index_wines_on_price_min_and_price_max_and_price_retail"
  add_index "wines", ["year", "url", "description"], name: "index_wines_on_year_and_url_and_description"

end
