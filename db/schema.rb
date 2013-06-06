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

ActiveRecord::Schema.define(:version => 20130605151416) do

  create_table "customers", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "address_street"
    t.string   "address_city"
    t.string   "address_country"
    t.string   "email"
    t.string   "gender"
    t.integer  "zip_code"
    t.integer  "phone_number"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "ref"
    t.string   "description"
    t.string   "currency"
    t.string   "status"
    t.string   "comment"
    t.float    "discount"
    t.float    "price"
    t.float    "cost"
    t.integer  "user_id"
    t.date     "submitted_at"
    t.date     "due_at"
    t.date     "approved_at"
    t.date     "closed_at"
    t.date     "follow_up_at"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "products_quotes", :force => true do |t|
    t.string   "comment"
    t.integer  "product_id"
    t.integer  "quote_id"
    t.integer  "customer_id"
    t.integer  "user_id"
    t.integer  "quantity"
    t.float    "discount"
    t.float    "price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "quotes", :force => true do |t|
    t.string   "ref"
    t.string   "currency"
    t.string   "discount"
    t.string   "status"
    t.string   "comment"
    t.integer  "customer_id"
    t.integer  "user_id"
    t.date     "submitted_at"
    t.date     "due_at"
    t.date     "approved_at"
    t.date     "closed_at"
    t.date     "follow_up_at"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "status"
    t.string   "password_digest"
    t.string   "email"
    t.boolean  "active"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
