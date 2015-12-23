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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151015075239) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.decimal  "phone",                    precision: 10
    t.text     "address",    limit: 65535
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "company",    limit: 255
    t.decimal  "phone",                  precision: 10
    t.string   "email",      limit: 255
    t.string   "quaries",    limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "images", force: :cascade do |t|
    t.integer  "product_id",         limit: 4
    t.integer  "imagable_id",        limit: 4
    t.string   "imagable_type",      limit: 255
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.decimal  "price",                     precision: 10
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "category_id", limit: 4
  end

  create_table "resumes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "attachment", limit: 255
    t.string   "email",      limit: 255
    t.string   "subject",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                        limit: 255,   default: "", null: false
    t.string   "encrypted_password",           limit: 255,   default: "", null: false
    t.string   "reset_password_token",         limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                limit: 4,     default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",           limit: 255
    t.string   "last_sign_in_ip",              limit: 255
    t.string   "confirmation_token",           limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",            limit: 255
    t.integer  "failed_attempts",              limit: 4,     default: 0
    t.string   "unlock_token",                 limit: 255
    t.datetime "locked_at"
    t.string   "attachment",                   limit: 255
    t.string   "authentication_token",         limit: 255
    t.string   "first_name",                   limit: 255
    t.string   "last_name",                    limit: 255
    t.string   "username",                     limit: 255
    t.string   "gender_type_list",             limit: 255
    t.string   "name",                         limit: 255
    t.string   "role",                         limit: 255
    t.string   "end_to_end_data_requisition",  limit: 255
    t.string   "automated_test_benches_ate",   limit: 255
    t.string   "engineering_services",         limit: 255
    t.string   "maintenance_support_services", limit: 255
    t.text     "address",                      limit: 65535
    t.string   "city",                         limit: 255
    t.string   "company",                      limit: 255
    t.string   "country_list",                 limit: 255
    t.string   "phone",                        limit: 255
    t.string   "paypal_id",                    limit: 255
    t.date     "date_of_birth"
    t.text     "other_info",                   limit: 65535
    t.string   "active",                       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
