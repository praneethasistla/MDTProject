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

ActiveRecord::Schema.define(version: 20160426180521) do

  create_table "inventories", force: :cascade do |t|
    t.integer  "inventory_id"
    t.string   "name"
    t.string   "description"
    t.integer  "quantity_original"
    t.integer  "quantity_remaining"
    t.integer  "supplier_id"
    t.datetime "date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "transaction_id"
    t.integer  "inventory_id"
    t.datetime "date"
    t.integer  "supplier_id"
    t.integer  "recipient_id"
    t.integer  "quantity"
    t.boolean  "confirmed_supplier"
    t.boolean  "confirmed_recipient"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "username"
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "password_digest"
    t.string   "contact_name"
    t.string   "contact_title"
    t.string   "phone"
    t.integer  "user_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
