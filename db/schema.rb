# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_08_194429) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.text "bio"
    t.string "img_url"
    t.string "instagram"
    t.string "twitter"
    t.string "tiktok"
    t.string "facebook"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "youtube"
  end

  create_table "checkouts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_checkouts_on_user_id"
  end

  create_table "giveaways", force: :cascade do |t|
    t.string "header"
    t.string "description"
    t.date "closing_date"
    t.string "img_url"
    t.text "full_details"
    t.bigint "artist_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_giveaways_on_artist_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "name"
    t.integer "price_in_cents"
    t.bigint "user_id"
    t.bigint "giveaway_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["giveaway_id"], name: "index_tickets_on_giveaway_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.boolean "admin"
    t.boolean "winner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "checkouts", "users"
  add_foreign_key "giveaways", "artists"
  add_foreign_key "tickets", "giveaways"
  add_foreign_key "tickets", "users"
end
