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

ActiveRecord::Schema.define(version: 20160914193555) do

  create_table "portfolios", force: :cascade do |t|
    t.string   "name"
    t.string   "work_done"
    t.text     "web_description"
    t.text     "logo_description"
    t.text     "bc_description"
    t.string   "link"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "image_main_file_name"
    t.string   "image_main_content_type"
    t.integer  "image_main_file_size"
    t.datetime "image_main_updated_at"
    t.string   "web_image_file_name"
    t.string   "web_image_content_type"
    t.integer  "web_image_file_size"
    t.datetime "web_image_updated_at"
    t.string   "logo_image_file_name"
    t.string   "logo_image_content_type"
    t.integer  "logo_image_file_size"
    t.datetime "logo_image_updated_at"
    t.string   "bc_image_file_name"
    t.string   "bc_image_content_type"
    t.integer  "bc_image_file_size"
    t.datetime "bc_image_updated_at"
    t.string   "small_desc"
  end

end
