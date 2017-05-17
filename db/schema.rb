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

ActiveRecord::Schema.define(version: 20170517150827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "document_number"
    t.string   "associate_number"
    t.date     "birth_date"
    t.string   "sex"
    t.string   "country_code"
    t.string   "marital_status"
    t.string   "city"
    t.string   "phone"
    t.string   "close_person_phone"
    t.string   "job"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.boolean  "asthma"
    t.boolean  "hearth_failure"
    t.boolean  "ischemic_heart_disease"
    t.boolean  "arteriopathy"
    t.boolean  "arterial_hypertension"
    t.boolean  "stroke"
    t.boolean  "diabetes"
    t.boolean  "dyslipidemia"
    t.boolean  "renal_insufficiency"
    t.boolean  "liver_disease"
    t.boolean  "ulcer_disease"
    t.boolean  "hematological_disease"
    t.boolean  "tuberculosis"
    t.boolean  "aids"
    t.boolean  "do_drugs"
    t.boolean  "alcoholism"
    t.boolean  "smoking"
    t.boolean  "allergies"
    t.boolean  "others"
    t.string   "others_description"
    t.string   "medicines"
    t.string   "surgical_history"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

end
