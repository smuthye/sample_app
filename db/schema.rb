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

ActiveRecord::Schema.define(version: 20140804051347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account", force: true do |t|
    t.string   "shippingpostalcode", limit: 20
    t.boolean  "cbimported__c"
    t.string   "billingstate",       limit: 80
    t.string   "billingstreet"
    t.string   "shippingstate",      limit: 80
    t.string   "shippingcity",       limit: 40
    t.string   "accountnumber",      limit: 40
    t.string   "billingcountry",     limit: 80
    t.datetime "lastmodifieddate"
    t.string   "active__c"
    t.text     "account_image__c"
    t.float    "annualrevenue"
    t.string   "_c5_source",         limit: 18
    t.string   "type",               limit: 40
    t.string   "name"
    t.string   "billingpostalcode",  limit: 20
    t.string   "sfid",               limit: 18
    t.string   "shippingcountry",    limit: 80
    t.string   "phone",              limit: 40
    t.string   "billingcity",        limit: 40
    t.boolean  "isdeleted"
    t.string   "shippingstreet"
    t.datetime "createddate"
  end

  add_index "account", ["lastmodifieddate"], name: "account_idx_lastmodifieddate", using: :btree
  add_index "account", ["sfid"], name: "account_idx_sfid", unique: true, using: :btree

  create_table "contact", force: true do |t|
    t.string   "mailingcountry",    limit: 80
    t.string   "_c5_source",        limit: 18
    t.string   "mailingpostalcode", limit: 20
    t.string   "lastname",          limit: 80
    t.string   "mailingstate",      limit: 80
    t.string   "zqu__county__c",    limit: 32
    t.string   "sfid",              limit: 18
    t.string   "leadsource",        limit: 40
    t.datetime "createddate"
    t.boolean  "cbimported__c"
    t.string   "mailingstreet"
    t.string   "otherstate",        limit: 80
    t.string   "name",              limit: 121
    t.string   "otherpostalcode",   limit: 20
    t.boolean  "isdeleted"
    t.string   "phone",             limit: 40
    t.datetime "lastmodifieddate"
    t.string   "othercity",         limit: 40
    t.string   "firstname",         limit: 40
    t.string   "othercountry",      limit: 80
    t.string   "mailingcity",       limit: 40
    t.string   "otherstreet"
    t.string   "accountid",         limit: 18
    t.string   "email",             limit: 80
    t.string   "otherphone",        limit: 40
  end

  add_index "contact", ["lastmodifieddate"], name: "contact_idx_lastmodifieddate", using: :btree
  add_index "contact", ["sfid"], name: "contact_idx_sfid", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
