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

ActiveRecord::Schema.define(version: 20150120083153) do

  create_table "clients", force: true do |t|
    t.string   "title"
    t.text     "headline"
    t.text     "intro"
    t.text     "help_intro"
    t.text     "advice_intro"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "guide_id"
  end

  create_table "clients_guides", force: true do |t|
    t.integer "client_id"
    t.integer "guide_id"
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
  end

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
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
