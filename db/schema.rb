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

ActiveRecord::Schema.define(version: 20161206074433) do

  create_table "auditoriums", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "auditorium_identifier"
    t.integer  "seats_available"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "theatres_id"
    t.index ["theatres_id"], name: "index_auditoriums_on_theatres_id", using: :btree
  end

  create_table "movie_showtimes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "start_time"
    t.integer  "auditoriums_id"
    t.integer  "movies_id"
    t.index ["auditoriums_id"], name: "index_movie_showtimes_on_auditoriums_id", using: :btree
    t.index ["movies_id"], name: "index_movie_showtimes_on_movies_id", using: :btree
  end

  create_table "movies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "length_minutes"
    t.integer  "rating_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "ratings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "rating_name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "theatres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "address_city"
    t.string   "address_zip_code"
    t.string   "phone_number"
    t.string   "address_state"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_foreign_key "auditoriums", "theatres", column: "theatres_id"
  add_foreign_key "movie_showtimes", "auditoriums", column: "auditoriums_id"
  add_foreign_key "movie_showtimes", "movies", column: "movies_id"
end
