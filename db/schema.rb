# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_12_070853) do

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "photo_id", null: false
    t.integer "viewer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["photo_id"], name: "index_comments_on_photo_id"
    t.index ["viewer_id"], name: "index_comments_on_viewer_id"
  end

  create_table "photographers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "camera"
    t.string "gender"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "status"
  end

  create_table "photos", force: :cascade do |t|
    t.string "image"
    t.date "date"
    t.string "location"
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "photographer_id"
    t.index ["photographer_id"], name: "index_photos_on_photographer_id"
  end

  create_table "viewers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "status"
  end

  add_foreign_key "comments", "photos"
  add_foreign_key "comments", "viewers"
  add_foreign_key "photos", "photographers"
end
