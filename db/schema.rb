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

ActiveRecord::Schema.define(version: 2018_09_06_094005) do

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "continent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "distributers", force: :cascade do |t|
    t.string "name"
    t.string "location"
  end

  create_table "grapes", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "producers", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "score"
    t.string "comment"
    t.integer "wine_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wine_distributer_assocs", force: :cascade do |t|
    t.integer "wine_id"
    t.integer "distributer_id"
  end

  create_table "wine_grapes", force: :cascade do |t|
    t.integer "wine_id"
    t.integer "grape_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wine_ratings", force: :cascade do |t|
    t.integer "wine_id"
    t.integer "rating_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wines", force: :cascade do |t|
    t.string "vintage"
    t.string "name"
    t.integer "producer_id"
    t.integer "region_id"
    t.integer "country_id"
    t.integer "style_id"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
  end

end
