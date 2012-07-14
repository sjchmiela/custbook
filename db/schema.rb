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

ActiveRecord::Schema.define(:version => 20120714094417) do

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "nid"
    t.date     "birthday"
    t.string   "phone"
    t.string   "cell"
    t.string   "email"
    t.string   "country"
    t.boolean  "diabetes"
    t.boolean  "psoriasis",       :limit => 255
    t.boolean  "steroids"
    t.boolean  "pregnancy"
    t.boolean  "yellows"
    t.boolean  "allergy"
    t.boolean  "sensitive_skin"
    t.boolean  "herpes"
    t.string   "found"
    t.text     "additional_info"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.string   "herpes_info"
  end

  create_table "treatments", :force => true do |t|
    t.string   "ttype"
    t.date     "date"
    t.integer  "client_id"
    t.decimal  "price"
    t.string   "color"
    t.boolean  "correction"
    t.text     "additional_info"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
