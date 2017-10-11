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

ActiveRecord::Schema.define(version: 20171011132432) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "city_id"
    t.index ["city_id"], name: "index_articles_on_city_id"
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "history"
    t.string "neighborhood"
    t.string "schools"
    t.string "transportation"
    t.string "job"
    t.string "market"
    t.string "sports"
    t.string "recreation"
    t.string "culture"
    t.string "health"
    t.string "currency"
    t.string "consulate"
    t.string "population"
    t.string "cost_of_living"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_cities_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "city_id"
    t.index ["city_id"], name: "index_comments_on_city_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
