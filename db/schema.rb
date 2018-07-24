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

ActiveRecord::Schema.define(version: 2018_07_24_192354) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "country"
    t.string "city"
    t.string "state"
    t.string "neighborhood"
    t.string "street"
    t.string "number"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_addresses_on_client_id"
  end

  create_table "clients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "registration"
    t.string "rg"
    t.string "cpf"
    t.string "phone"
    t.bigint "user_id"
    t.text "notes"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "events", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "Frequency"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feature_vehicles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.decimal "Valeu", precision: 10
    t.text "date_last_change"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "features", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "description"
    t.integer "optional"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "historics", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "event_date"
    t.string "event_desc"
    t.integer "mileage"
    t.decimal "valor", precision: 10
    t.integer "nr_tribute_note"
    t.bigint "vehicle_id"
    t.integer "user_id"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_id"], name: "index_historics_on_vehicle_id"
  end

  create_table "reserves", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "motivate"
    t.string "meleageEstimated"
    t.date "reserve_date"
    t.bigint "vehicle_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_id"], name: "index_reserves_on_vehicle_id"
  end

  create_table "return_vehicles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "withdrawal_date"
    t.date "return_date"
    t.string "withdrawal_meleage"
    t.string "withdrawal_fuel"
    t.string "bodywork"
    t.string "tires"
    t.text "note"
    t.bigint "status_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["status_id"], name: "index_return_vehicles_on_status_id"
  end

  create_table "statuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "delivery_meleage"
    t.string "fuel"
    t.string "bodywork"
    t.string "tires"
    t.text "note"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "document"
    t.integer "kind"
    t.integer "status"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_benefits", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "delivery"
    t.date "devolution"
    t.integer "use_fds"
    t.bigint "vehicle_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_id"], name: "index_vehicle_benefits_on_vehicle_id"
  end

  create_table "vehicles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "manufacturer"
    t.string "year"
    t.string "model"
    t.string "chassi"
    t.string "document"
    t.string "color"
    t.string "board"
    t.date "acquisition"
    t.integer "cnh"
    t.string "meleage_current"
    t.string "locadora"
    t.string "seguradora"
    t.string "dinvehicle"
    t.integer "kind"
    t.bigint "client_id"
    t.bigint "user_id"
    t.text "notes"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_vehicles_on_client_id"
    t.index ["user_id"], name: "index_vehicles_on_user_id"
  end

  create_table "workshops", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "specialty"
    t.string "service_desc"
    t.string "contact_name"
    t.bigint "historic_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["historic_id"], name: "index_workshops_on_historic_id"
  end

  add_foreign_key "addresses", "clients"
  add_foreign_key "clients", "users"
  add_foreign_key "historics", "vehicles"
  add_foreign_key "reserves", "vehicles"
  add_foreign_key "return_vehicles", "statuses"
  add_foreign_key "vehicle_benefits", "vehicles"
  add_foreign_key "vehicles", "clients"
  add_foreign_key "vehicles", "users"
  add_foreign_key "workshops", "historics"
end
