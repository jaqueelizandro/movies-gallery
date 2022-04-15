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

ActiveRecord::Schema.define(version: 2022_04_15_073546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movies", force: :cascade do |t|
    t.text "title"
    t.text "year"
    t.text "image"
    t.text "plot"
    t.text "director"
    t.text "genres"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "imdbid"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rate"
    t.text "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "movie_id"
    t.text "title"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.string "password_digest"
    t.boolean "admin"
    t.text "name"
    t.text "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
