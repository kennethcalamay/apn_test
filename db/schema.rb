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

ActiveRecord::Schema.define(:version => 20110907063629) do

  create_table "rapns_notifications", :force => true do |t|
    t.integer  "badge"
    t.string   "device_token",          :limit => 64,                       :null => false
    t.string   "sound",                               :default => "1.aiff"
    t.string   "alert"
    t.text     "attributes_for_device"
    t.integer  "expiry",                              :default => 86400,    :null => false
    t.boolean  "delivered",                           :default => false,    :null => false
    t.datetime "delivered_at"
    t.boolean  "failed",                              :default => false,    :null => false
    t.datetime "failed_at"
    t.integer  "error_code"
    t.string   "error_description"
    t.datetime "deliver_after"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rapns_notifications", ["delivered", "failed", "deliver_after"], :name => "index_rapns_notifications_on_delivered_failed_deliver_after"

end
