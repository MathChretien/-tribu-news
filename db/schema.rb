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

ActiveRecord::Schema.define(version: 2019_03_11_153727) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boxes", force: :cascade do |t|
    t.bigint "picture_id"
    t.text "text"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["picture_id"], name: "index_boxes_on_picture_id"
  end

  create_table "newspapers", force: :cascade do |t|
    t.bigint "tribe_id"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tribe_id"], name: "index_newspapers_on_tribe_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "layout"
    t.bigint "box_id"
    t.bigint "newspaper_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["box_id"], name: "index_pages_on_box_id"
    t.index ["newspaper_id"], name: "index_pages_on_newspaper_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.bigint "newspaper_id"
    t.string "cloudinary_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["newspaper_id"], name: "index_pictures_on_newspaper_id"
  end

  create_table "tribes", force: :cascade do |t|
    t.string "name"
    t.string "profile_pic"
    t.text "address"
    t.boolean "subscribe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
