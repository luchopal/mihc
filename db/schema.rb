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

ActiveRecord::Schema.define(version: 20170726132215) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abdomen", force: :cascade do |t|
    t.integer  "physical_exam_id"
    t.boolean  "inspection"
    t.boolean  "plane"
    t.boolean  "spherical"
    t.boolean  "relaxed"
    t.boolean  "asymmetric"
    t.boolean  "umbilical_hernia"
    t.boolean  "eventration"
    t.string   "location"
    t.string   "size"
    t.boolean  "scar"
    t.boolean  "msu"
    t.boolean  "miu"
    t.boolean  "xp"
    t.boolean  "mc_burney"
    t.boolean  "kocher"
    t.boolean  "pfannenstiel"
    t.boolean  "others"
    t.string   "others_description"
    t.boolean  "palpation"
    t.boolean  "soft"
    t.boolean  "uptight"
    t.boolean  "painful"
    t.string   "superficial_pain"
    t.string   "deep_pain"
    t.string   "defence"
    t.string   "peritoneal_reaction"
    t.boolean  "percussion"
    t.string   "bloat"
    t.string   "auscultation"
    t.string   "auscultation_location"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "auscultation_type"
    t.string   "abdomen_palpation"
  end

  create_table "breast_exams", force: :cascade do |t|
    t.integer  "physical_exam_id"
    t.boolean  "left_breast_first_quadrant"
    t.boolean  "left_breast_second_quadrant"
    t.boolean  "left_breast_third_quadrant"
    t.boolean  "left_breast_fourth_quadrant"
    t.boolean  "left_breast_center"
    t.boolean  "right_breast_first_quadrant"
    t.boolean  "right_breast_second_quadrant"
    t.boolean  "right_breast_third_quadrant"
    t.boolean  "right_breast_fourth_quadrant"
    t.boolean  "right_breast_center"
    t.string   "breast_description"
    t.boolean  "right_armpit"
    t.boolean  "left_armpit"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "cervical_examinations", force: :cascade do |t|
    t.integer  "physical_exam_id"
    t.boolean  "lateral_tumor"
    t.boolean  "left_lateral_tumor"
    t.boolean  "right_lateral_tumor"
    t.string   "tumor_description"
    t.boolean  "central_tumor"
    t.string   "central_tumor_description"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "complementary_exams", force: :cascade do |t|
    t.integer  "medical_consultation_id"
    t.string   "complementary_exam_type"
    t.string   "comment"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "inguinocrural_examinations", force: :cascade do |t|
    t.integer  "physical_exam_id"
    t.boolean  "left_reductible_inguinal_hernia"
    t.boolean  "right_reductible_inguinal_hernia"
    t.boolean  "left_coercible_inguinal_hernia"
    t.boolean  "right_coercible_inguinal_hernia"
    t.boolean  "left_reductible_crural_hernia"
    t.boolean  "right_reductible_crural_hernia"
    t.boolean  "left_coercible_crural_hernia"
    t.boolean  "right_coercible_crural_hernia"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "laboratories", force: :cascade do |t|
    t.integer  "medical_consultation_id"
    t.date     "date"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "hto"
    t.string   "hb"
    t.string   "gb"
    t.string   "gluc"
    t.string   "urea"
    t.string   "creat"
    t.string   "tgo"
    t.string   "tgp"
    t.string   "fal"
    t.string   "amilasa"
    t.string   "bt"
    t.string   "bd"
    t.string   "prot_tot"
    t.string   "alb"
    t.string   "na"
    t.string   "k"
    t.string   "plaq"
    t.string   "conc_pt"
    t.string   "cea"
    t.string   "ca199"
    t.string   "ca124"
  end

  create_table "medical_consultations", force: :cascade do |t|
    t.date     "date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "patient_id"
    t.string   "reason"
    t.boolean  "activate_laboratory"
    t.string   "anamnesis"
    t.string   "medical_evolution"
  end

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

  create_table "physical_exams", force: :cascade do |t|
    t.integer  "medical_consultation_id"
    t.string   "overall_status"
    t.boolean  "activate_abdomen"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.boolean  "activate_proctochological_examination"
    t.boolean  "activate_inquinocrural_examination"
    t.boolean  "activate_cervical_examination"
    t.boolean  "activate_breast_exam"
    t.boolean  "activate_skin_lesion"
  end

  create_table "proctochological_examinations", force: :cascade do |t|
    t.integer  "physical_exam_id"
    t.string   "sking_lesion"
    t.string   "hematoma"
    t.string   "traumatic_injury"
    t.string   "uncomplicated_hemorrhoids"
    t.string   "acute_fissure"
    t.string   "chronic_fissure"
    t.string   "fistulous_orifice"
    t.string   "bulging"
    t.string   "plicoma"
    t.string   "redness"
    t.string   "thrombosis_hemorrhoids"
    t.string   "fluxion_hemorrhoids"
    t.string   "hemorrhage_hemorrhoids"
    t.string   "anal_sphincter_tonicity"
    t.string   "rectal_ampoule"
    t.string   "occupied_rectal_ampoule"
    t.boolean  "formation"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "formation_position"
  end

  create_table "relatives", force: :cascade do |t|
    t.integer  "patient_id"
    t.string   "bond"
    t.string   "status"
    t.string   "observation"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["patient_id"], name: "index_relatives_on_patient_id", using: :btree
  end

  create_table "skin_lesion_exams", force: :cascade do |t|
    t.integer  "physical_exam_id"
    t.string   "skin_lesion_description"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
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
