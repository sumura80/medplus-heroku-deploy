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

ActiveRecord::Schema.define(version: 20190226110237) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "precaution_bold"
    t.text "precaution_red"
    t.text "precaution_large"
    t.text "blurb"
    t.string "image"
    t.string "precaution_uri"
    t.string "precaution_uri_title"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "post_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "votes_count", default: 0
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "extraimgs", force: :cascade do |t|
    t.string "extraimg_name"
    t.string "extraimage"
    t.text "extraimg_description"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_extraimgs_on_post_id"
  end

  create_table "infoimgs", force: :cascade do |t|
    t.string "infoimg_name"
    t.string "infoimage"
    t.text "infoimg_description"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_infoimgs_on_post_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.integer "user_id"
    t.integer "likes_count", default: 0
    t.integer "category_id"
    t.string "title_jp"
    t.text "description_jp"
    t.text "med_purpose"
    t.string "medical_type"
    t.text "indication"
    t.text "attn_large"
    t.text "attn_bold"
    t.text "attn_regular"
    t.text "attn_red"
    t.text "active_large"
    t.text "active_regular"
    t.text "active_red"
    t.string "dose"
    t.text "inactive_regular"
    t.text "inactive_bold"
    t.text "inactive_red"
    t.text "instructions_regular"
    t.text "instructions_bold"
    t.text "instructions_red"
    t.text "other_info_regular"
    t.text "other_info_bold"
    t.text "other_info_red"
    t.text "link_note"
    t.text "en_source"
    t.text "jp_source"
    t.text "en_pdf"
    t.text "jp_pdf"
    t.string "en_precautions"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "user_image"
    t.boolean "admin", default: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true, where: "deleted_at IS NULL"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
