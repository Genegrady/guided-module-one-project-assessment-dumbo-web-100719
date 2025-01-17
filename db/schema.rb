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

ActiveRecord::Schema.define(version: 2019_10_22_133128) do

  create_table "bikes", force: :cascade do |t|
    t.integer "user_id"
    t.string "location"
    t.string "type_of_bike"
    t.string "brand"
    t.string "size_of_bike"
    t.string "condition"
    t.boolean "available", default: true
  end

  create_table "requests", force: :cascade do |t|
    t.integer "requester_bike_id"
    t.integer "requestee_bike_id"
    t.boolean "swap_completed"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "email"
    t.text "looking_for"
  end

end
