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

ActiveRecord::Schema.define(version: 20160426003426) do

  create_table "apps", force: :cascade do |t|
    t.string   "application_name"
    t.text     "application_uris"
    t.string   "state"
    t.text     "limits"
    t.string   "details"
    t.integer  "space_id"
    t.string   "buildpack"
    t.datetime "last_uploaded"
    t.text     "services"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "apps", ["space_id"], name: "index_apps_on_space_id"

  create_table "members", force: :cascade do |t|
    t.string   "email"
    t.integer  "org_id"
    t.text     "roles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "members", ["org_id"], name: "index_members_on_org_id"

  create_table "orgs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spaces", force: :cascade do |t|
    t.string   "name"
    t.integer  "org_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "spaces", ["org_id"], name: "index_spaces_on_org_id"

end
