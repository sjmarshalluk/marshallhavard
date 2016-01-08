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

ActiveRecord::Schema.define(version: 20160108010911) do

  create_table "client_services", force: true do |t|
    t.integer  "client_id"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "client_services", ["client_id"], name: "index_client_services_on_client_id"
  add_index "client_services", ["service_id"], name: "index_client_services_on_service_id"

  create_table "clientguides", force: true do |t|
    t.integer "client_id"
    t.integer "guide_id"
  end

  add_index "clientguides", ["client_id"], name: "index_clientguides_on_client_id"
  add_index "clientguides", ["guide_id"], name: "index_clientguides_on_guide_id"

  create_table "clients", force: true do |t|
    t.string   "title"
    t.string   "headline"
    t.text     "intro"
    t.text     "help_intro"
    t.text     "advice_intro"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "guide_id"
    t.string   "summary"
  end

  create_table "guides", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "starting_out"
    t.boolean  "self_employed"
    t.boolean  "limited_company"
    t.boolean  "CIS_subcontractor"
    t.boolean  "seafarer"
    t.boolean  "renting_or_sold_property"
    t.boolean  "self_assesment"
    t.boolean  "overseas"
    t.boolean  "particular_tax_advice"
    t.boolean  "employed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
    t.string   "summary"
    t.boolean  "draft"
  end

  create_table "helpsheets", force: true do |t|
    t.integer  "client_id"
    t.integer  "guide_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "helpsheets", ["client_id"], name: "index_helpsheets_on_client_id"
  add_index "helpsheets", ["guide_id"], name: "index_helpsheets_on_guide_id"

  create_table "queries", force: true do |t|
    t.integer  "client_id"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "queries", ["client_id"], name: "index_queries_on_client_id"
  add_index "queries", ["question_id"], name: "index_queries_on_question_id"

  create_table "questions", force: true do |t|
    t.string   "question"
    t.text     "answer"
    t.boolean  "starting_out"
    t.boolean  "self_employed"
    t.boolean  "limited_company"
    t.boolean  "CIS_subcontractor"
    t.boolean  "seafarer"
    t.boolean  "renting_or_sold_property"
    t.boolean  "self_assesment"
    t.boolean  "overseas"
    t.boolean  "particular_tax_advice"
    t.boolean  "employed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "draft"
  end

  create_table "services", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "starting_out"
    t.boolean  "self_employed"
    t.boolean  "limited_company"
    t.boolean  "CIS_subcontractor"
    t.boolean  "seafarer"
    t.boolean  "renting_or_sold_property"
    t.boolean  "self_assesment"
    t.boolean  "overseas"
    t.boolean  "particular_tax_advice"
    t.boolean  "employed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "draft"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
