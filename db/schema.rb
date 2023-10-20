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

ActiveRecord::Schema[7.0].define(version: 2023_10_20_135117) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
  end

  create_table "debates", force: :cascade do |t|
    t.string "title"
    t.text "lead"
    t.text "context"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end