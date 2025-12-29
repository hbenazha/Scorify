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

ActiveRecord::Schema[8.1].define(version: 2025_12_29_094936) do
  create_table "playlist_items", force: :cascade do |t|
    t.text "comment"
    t.datetime "created_at", null: false
    t.integer "playlist_id", null: false
    t.integer "rating"
    t.integer "song_id", null: false
    t.datetime "updated_at", null: false
    t.index ["playlist_id"], name: "index_playlist_items_on_playlist_id"
    t.index ["song_id"], name: "index_playlist_items_on_song_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "artist"
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "playlist_items", "playlists"
  add_foreign_key "playlist_items", "songs"
end
