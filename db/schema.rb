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

ActiveRecord::Schema[7.1].define(version: 2024_07_04_123404) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date "check_in"
    t.date "check_out"
    t.integer "status", default: 0
    t.bigint "user_id", null: false
    t.bigint "flat_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flat_id"], name: "index_bookings_on_flat_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.binary "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flat_features", force: :cascade do |t|
    t.bigint "flat_id", null: false
    t.bigint "feature_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_id"], name: "index_flat_features_on_feature_id"
    t.index ["flat_id"], name: "index_flat_features_on_flat_id"
  end

  create_table "flats", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "address"
    t.float "price_per_night"
    t.string "category"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_flats_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.float "rating"
    t.bigint "user_id", null: false
    t.bigint "booking_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "flats"
  add_foreign_key "bookings", "users"
  add_foreign_key "flat_features", "features"
  add_foreign_key "flat_features", "flats"
  add_foreign_key "flats", "users"
  add_foreign_key "reviews", "bookings"
  add_foreign_key "reviews", "users"
end
