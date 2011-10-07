# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111007003713) do

  create_table "actor_profile_children", :force => true do |t|
    t.boolean  "gender"
    t.date     "dob"
    t.integer  "actor_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "actor_profile_contracts", :force => true do |t|
    t.integer  "actor_profile_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "actor_profile_experiences", :force => true do |t|
    t.integer  "type_id"
    t.integer  "actor_profile_id"
    t.string   "description"
    t.date     "start_date"
    t.date     "finish_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "actor_profile_model_infos", :force => true do |t|
    t.integer  "actor_profile_id"
    t.integer  "chest"
    t.integer  "waist"
    t.integer  "hip"
    t.integer  "show_size"
    t.integer  "hair_length"
    t.string   "constitution"
    t.string   "clothing_size"
    t.string   "eye_color"
    t.string   "hair_color"
    t.string   "appearence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "actor_profiles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "weight"
    t.integer  "height"
    t.string   "emploi"
    t.string   "professional_profile"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "additional_information"
    t.string   "special_skills"
    t.date     "passport_expiry_date"
    t.integer  "driver_licence_id"
  end

  create_table "citizenships", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "citizenships_personal_infos", :id => false, :force => true do |t|
    t.integer "citizenship_id"
    t.integer "personal_info_id"
  end

  create_table "contact_info_emails", :force => true do |t|
    t.integer  "contact_info_id"
    t.string   "element"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_info_phone_numbers", :force => true do |t|
    t.integer  "contact_info_id"
    t.string   "element"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_infos", :force => true do |t|
    t.string   "website"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "driver_licences", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experience_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "language_levels", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "language_personal_infos", :force => true do |t|
    t.integer  "language_id"
    t.integer  "level_id"
    t.integer  "personal_info_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personal_infos", :force => true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.boolean "gender",      :default => true
    t.date    "dob"
    t.integer "user_id"
    t.integer "location_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.string   "current_workplace"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
