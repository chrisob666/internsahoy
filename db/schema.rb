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

ActiveRecord::Schema.define(:version => 20130307230430) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "company_profiles", :force => true do |t|
    t.string   "user_id"
    t.string   "company_name"
    t.string   "email"
    t.text     "description"
    t.string   "qsort"
    t.string   "company_type"
    t.integer  "number_of_employees"
    t.string   "website"
    t.string   "location"
    t.string   "tax_code"
    t.boolean  "verified"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "job_postings", :force => true do |t|
    t.string   "job_id"
    t.string   "position"
    t.text     "job_description"
    t.date     "job_start"
    t.date     "job_end"
    t.date     "posted_on"
    t.string   "position_time"
    t.string   "job_paid"
    t.string   "user_id"
    t.text     "job_requirements"
    t.integer  "company_profile_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "qsorts", :force => true do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "saved_job_postings", :force => true do |t|
    t.string   "position_text"
    t.string   "description_text"
    t.string   "paid_text"
    t.string   "requirements_text"
    t.string   "culture"
    t.integer  "student_profile_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "saved_student_profiles", :force => true do |t|
    t.integer  "company_profile_id"
    t.string   "school_text"
    t.string   "year_text"
    t.string   "skill_text"
    t.string   "culture"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "skills", :force => true do |t|
    t.string   "user_id"
    t.string   "description"
    t.integer  "student_profile_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "stu_references", :force => true do |t|
    t.string   "uid"
    t.string   "name"
    t.string   "relationship"
    t.string   "phone"
    t.integer  "student_profile_id"
    t.string   "email"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "stu_work_experiences", :force => true do |t|
    t.string   "company"
    t.string   "position"
    t.date     "start_date"
    t.string   "end_date"
    t.text     "description"
    t.integer  "student_profile_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "student_profiles", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_id"
    t.string   "school"
    t.string   "email"
    t.string   "expected_graduation"
    t.string   "school_year"
    t.string   "last_completed_degree"
    t.string   "zip"
    t.string   "qsort"
    t.string   "major"
    t.string   "resume"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "user_type",                              :null => false
    t.integer  "profileable_id"
    t.string   "profileable_type"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

end
