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

ActiveRecord::Schema.define(version: 20150130032639) do
ActiveRecord::Schema.define(version: 20150130034107) do

  create_table "artists", force: :cascade do |t|
    t.string   "artist_name"
    t.string   "artist_image"
    t.string   "website_link"
    t.integer  "albums_id"
    t.integer  "songs_id"
    t.string   "performances"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "username"
    t.string   "password"
  end

  add_index "artists", ["albums_id"], name: "index_artists_on_albums_id"
  add_index "artists", ["songs_id"], name: "index_artists_on_songs_id"

  create_table "fans", force: :cascade do |t|
    t.string   "first_name"
    t.string   "user_name"
    t.string   "password"
    t.string   "city"
    t.integer  "zip_code"
    t.string   "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "performances", force: :cascade do |t|
    t.string   "performance_name"
<<<<<<< HEAD
    t.integer  "artist_id_id"
    t.integer  "venue_id_id"
=======
>>>>>>> b701cb29983fe66c2fa6181b73e394b9527e48f9
    t.string   "performance_venue"
    t.datetime "performance_date"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "performances", ["artist_id_id"], name: "index_performances_on_artist_id_id"
  add_index "performances", ["venue_id_id"], name: "index_performances_on_venue_id_id"

  create_table "songs", force: :cascade do |t|
    t.string   "song_title"
    t.integer  "artist_id_id"
    t.integer  "album_id_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "songs", ["album_id_id"], name: "index_songs_on_album_id_id"
  add_index "songs", ["artist_id_id"], name: "index_songs_on_artist_id_id"

  create_table "venues", force: :cascade do |t|
    t.string   "venue_name"
    t.string   "location"
    t.string   "contact_info"
    t.boolean  "parking"
    t.string   "venue_capacity"
    t.string   "venue_image"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "username"
    t.string   "password"
  end

end
