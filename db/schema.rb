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

ActiveRecord::Schema.define(version: 20180329142321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "newpatients", force: :cascade do |t|
    t.text "firstname"
    t.text "seconmdname"
    t.text "dob"
    t.text "address"
    t.text "phone"
    t.text "illness"
    t.text "medinfo"
    t.text "nextkinfirstname"
    t.text "nextkinsecondname"
    t.text "nextkincontact"
    t.text "nextkinaddress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.text "firstname"
    t.text "secondname"
    t.text "dateofbirth"
    t.text "address"
    t.text "phonenumber"
    t.text "illness"
    t.text "relevantmedicalinfo"
    t.text "nextofkinfirstname"
    t.text "nextofkinsecondname"
    t.text "nextofkincontactnumber"
    t.text "nextofkinaddress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string "notes"
    t.string "request"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_requests_on_patient_id"
  end

  add_foreign_key "requests", "patients"
end
