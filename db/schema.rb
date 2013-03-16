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

ActiveRecord::Schema.define(:version => 20130316140255) do

  create_table "otter_surveys", :force => true do |t|
    t.string   "site_no"
    t.string   "region"
    t.string   "site_name"
    t.string   "county"
    t.string   "alt"
    t.string   "grid_ref"
    t.string   "gps_grid_ref_start"
    t.string   "date_v1"
    t.string   "date_v2"
    t.string   "date_v3"
    t.string   "date_v4"
    t.string   "date_v5"
    t.string   "v1"
    t.string   "v2"
    t.string   "v3"
    t.string   "v4"
    t.string   "v5"
    t.string   "gps_grid_ref_otter"
    t.string   "leap"
    t.string   "mink_present"
    t.string   "easting"
    t.string   "northing"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
