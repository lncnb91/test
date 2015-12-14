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

ActiveRecord::Schema.define(version: 20151214104336) do

  create_table "article_tags", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "article_id", limit: 4
    t.integer  "tag_id",     limit: 4
  end

  create_table "articles", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "title",       limit: 255,   null: false
    t.text     "content",     limit: 65535, null: false
    t.integer  "category_id", limit: 4,     null: false
    t.integer  "author_id",   limit: 4
  end

  create_table "articles_tags", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "article_id", limit: 4
    t.integer  "tag_id",     limit: 4
  end

  create_table "authors", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.date     "birth_day"
  end

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name",       limit: 255
  end

  create_table "tags", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name",       limit: 255
  end

  create_table "words", force: :cascade do |t|
    t.string   "content",    limit: 255
    t.string   "meaning",    limit: 255
    t.integer  "type",       limit: 4
    t.integer  "tense",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
