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

ActiveRecord::Schema.define(version: 20140604202430) do

  create_table "ratings", force: true do |t|
    t.integer "tip_id"
    t.integer "user_id"
    t.integer "rating"
  end

  create_table "tips", force: true do |t|
    t.integer  "user_id"
    t.integer  "video_id"
    t.text     "content"
    t.datetime "created_at"
  end

  create_table "users", force: true do |t|
    t.string "username"
    t.string "password"
    t.string "name"
  end

  create_table "videos", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.string   "video_url"
    t.integer  "user_id"
    t.text     "swing_issues"
    t.string   "image_url"
  end

end
