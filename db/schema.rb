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

ActiveRecord::Schema.define(version: 2018_08_09_091713) do

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.integer "tweet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tweet_id"], name: "index_comments_on_tweet_id"
  end

  create_table "goods", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tweet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
  create_table "likes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "tweet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tweet_id"], name: "index_likes_on_tweet_id"
    t.index ["user_id", "tweet_id"], name: "index_likes_on_user_id_and_tweet_id", unique: true
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "mores", force: :cascade do |t|
    t.integer "user_id"
    t.integer "note_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notecomments", force: :cascade do |t|
    t.text "body"
    t.integer "note_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["note_id"], name: "index_notecomments_on_note_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "genre"
    t.string "title"
    t.string "contents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "following_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["follower_id", "following_id"], name: "index_relationships_on_follower_id_and_following_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
    t.index ["following_id"], name: "index_relationships_on_following_id"
  end

  create_table "tweets", force: :cascade do |t|
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "sex"
    t.string "image"
    t.text "description"
  end

end
