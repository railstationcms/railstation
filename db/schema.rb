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

ActiveRecord::Schema.define(version: 20150503182917) do

  create_table "pages", force: true do |t|
    t.string   "name",                 null: false
    t.string   "slug",                 null: false
    t.text     "description"
    t.integer  "parent_page_id"
    t.integer  "user_id"
    t.integer  "position"
    t.integer  "page_template_id"
    t.integer  "theme_id"
    t.boolean  "active"
    t.integer  "symlinked_page_id"
    t.boolean  "external_link"
    t.string   "external_link_url"
    t.string   "external_link_target"
    t.integer  "package_id"
    t.datetime "checked_out_at"
    t.datetime "checked_in_at"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
