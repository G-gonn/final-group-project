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

ActiveRecord::Schema.define(version: 20171212144258) do

  create_table "bike_loan", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "rent_id", null: false
    t.date "booking_start", null: false
    t.date "booking_end", null: false
  end

  create_table "bike_loans", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bike_rent", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.timestamp "date_of_creation", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "type_of_bike", null: false
    t.string "bike_brand", null: false
    t.string "bike_model", null: false
    t.string "country_registration", null: false
    t.integer "mileage", null: false
    t.integer "price", null: false
    t.text "bike_description", limit: 4294967295, null: false
    t.boolean "transmission", null: false
    t.boolean "top_case", null: false
    t.boolean "leg_cover", null: false
  end

  create_table "bike_rents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id", null: false
    t.text "user_comment", limit: 4294967295, null: false
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment", primary_key: "payment_id", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
  end

  create_table "payments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_tables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
  end

  create_table "user", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.timestamp "account_creation", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.date "date_of_birth", null: false
    t.string "place_of_birth", null: false
    t.string "type_of_driver_licence", limit: 60, null: false
    t.string "driver_licence_number", limit: 60, null: false
    t.date "driver_licence_date", null: false
    t.string "driver_licence_country", null: false
    t.string "mail_address", limit: 60, null: false
    t.string "password", limit: 60, null: false
    t.integer "phone_number", null: false
    t.string "postal_address", null: false
    t.integer "zip_code", null: false
    t.string "city", null: false
    t.string "country", null: false
    t.text "about_me", limit: 4294967295, null: false
    t.string "linkedin", limit: 60, null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
