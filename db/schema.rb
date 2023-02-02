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

ActiveRecord::Schema[7.0].define(version: 2023_02_01_125134) do
  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.integer "customer_id"
    t.integer "counsellor_id"
    t.integer "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["counsellor_id"], name: "index_appointments_on_counsellor_id"
    t.index ["customer_id"], name: "index_appointments_on_customer_id"
    t.index ["service_id"], name: "index_appointments_on_service_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "feed_desc"
    t.integer "customer_id"
    t.integer "counsellor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["counsellor_id"], name: "index_feedbacks_on_counsellor_id"
    t.index ["customer_id"], name: "index_feedbacks_on_customer_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "service_name"
    t.string "desc"
    t.integer "counsellor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["counsellor_id"], name: "index_services_on_counsellor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
