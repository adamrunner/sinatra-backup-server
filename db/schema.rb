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

ActiveRecord::Schema.define(:version => 20160703004524) do

  create_table "backups", :force => true do |t|
    t.string   "date_string"
    t.datetime "started_at"
    t.datetime "completed_at"
    t.string   "exit_code"
    t.integer  "drive_id"
    t.boolean  "automated",    :default => true
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "drives", :force => true do |t|
    t.datetime "last_connected"
    t.string   "uuid_path"
    t.string   "name"
    t.string   "mount_point",    :default => "/media/usb"
    t.integer  "total_space"
    t.integer  "free_space"
    t.integer  "used_space"
    t.decimal  "used_percent"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

end
