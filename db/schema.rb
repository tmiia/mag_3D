# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_23_133427) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pseudonym"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "article_tags", force: :cascade do |t|
    t.bigint "article_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_article_tags_on_article_id"
    t.index ["tag_id"], name: "index_article_tags_on_tag_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "lead"
    t.string "thumbnail"
    t.text "text_content"
    t.string "media"
    t.integer "mood_value"
    t.text "keywords"
    t.boolean "is_longformat"
    t.boolean "is_draft"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_articles_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commentaries", force: :cascade do |t|
    t.text "comment"
    t.boolean "is_reported"
    t.boolean "is_masked"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "debate_id", null: false
    t.bigint "article_id", null: false
    t.bigint "commentary_id", null: false
    t.bigint "user_id", null: false
    t.index ["article_id"], name: "index_commentaries_on_article_id"
    t.index ["commentary_id"], name: "index_commentaries_on_commentary_id"
    t.index ["debate_id"], name: "index_commentaries_on_debate_id"
    t.index ["user_id"], name: "index_commentaries_on_user_id"
  end

  create_table "debates", force: :cascade do |t|
    t.string "title"
    t.text "lead"
    t.text "context"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_debates_on_category_id"
  end

  create_table "favoris", force: :cascade do |t|
    t.bigint "article_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_favoris_on_article_id"
    t.index ["user_id"], name: "index_favoris_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_likes_on_user_id"
    t.bigint "commentary_id", null: false
    t.index ["commentary_id"], name: "index_likes_on_commentary_id"
  end

  create_table "polls", force: :cascade do |t|
    t.text "question"
    t.string "label_1"
    t.integer "count_1"
    t.string "label_2"
    t.integer "count_2"
    t.string "label_3"
    t.integer "count_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pseudonym"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "article_tags", "articles"
  add_foreign_key "article_tags", "tags"
  add_foreign_key "articles", "categories"
  add_foreign_key "commentaries", "articles"
  add_foreign_key "commentaries", "commentaries"
  add_foreign_key "commentaries", "debates"
  add_foreign_key "commentaries", "users"
  add_foreign_key "debates", "categories"
  add_foreign_key "favoris", "articles"
  add_foreign_key "favoris", "users"
  add_foreign_key "likes", "users"
  add_foreign_key "likes", "commentaries"
end
