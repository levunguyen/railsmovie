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

ActiveRecord::Schema.define(version: 20161202042829) do

  create_table "movie_showtimes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "movie_id"
    t.integer  "theatre_id"
    t.string   "auditorium"
    t.datetime "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.integer  "length_minutes"
    t.string   "rating"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "theatres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "address_city"
    t.string   "address_zip_code"
    t.string   "phone_number"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
