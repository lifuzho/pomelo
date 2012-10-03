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

ActiveRecord::Schema.define(:version => 20121005024342) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "position"
    t.integer  "parent_id"
    t.string   "protected_question"
    t.string   "portected_answer"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "posts", :force => true do |t|
    t.integer  "category_id"
    t.string   "title"
    t.integer  "image_id"
    t.text     "summary"
    t.text     "content"
    t.datetime "published_at"
    t.boolean  "draft"
    t.string   "protected_question"
    t.string   "protected_answer"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "nickname"
    t.string   "salt",            :default => ""
    t.string   "hashed_password"
    t.text     "introduction"
    t.integer  "status",          :default => 0
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

end
