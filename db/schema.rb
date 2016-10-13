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

ActiveRecord::Schema.define(version: 20161011072426) do

  create_table "channels", force: :cascade do |t|
    t.string  "title"
    t.text    "content"
    t.integer "user_id"
    t.integer "message_id"
    t.index ["message_id"], name: "index_channels_on_message_id"
  end

  create_table "message_channels", force: :cascade do |t|
    t.integer "message_id"
    t.integer "channel_id"
    t.index ["channel_id"], name: "index_message_channels_on_channel_id"
    t.index ["message_id"], name: "index_message_channels_on_message_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string  "content"
    t.integer "user_id"
    t.integer "channel_id"
    t.string  "username"
    t.index ["channel_id"], name: "index_messages_on_channel_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
  end

end